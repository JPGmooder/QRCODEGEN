import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  LoadingScreen({Key? key}) : super(key: key);

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animation1;
  late Animation _animation2;

  late final AnimationController _controllerR = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animationR = CurvedAnimation(
    parent: _controller,
    curve: Curves.slowMiddle,
  );

  @override
  void initState() {
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1500));
    _animation1 =
        ColorTween(begin: Colors.blue, end: Colors.red).animate(_controller);
    _animation2 = ColorTween(begin: Colors.grey.shade100, end: Colors.purple)
        .animate(_controller);

    _controller.addListener(() {
      setState(() {});
    });

    _controller.forward();

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    });

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RotationTransition(
        turns: _animationR,
        child: ShaderMask(
            shaderCallback: (rect) =>
                RadialGradient(colors: [_animation1.value, _animation2.value])
                    .createShader(rect),
            child: ClipOval(
                child: Image.asset("lib/consts/assets/img/nonka.png"))),
      ),
    );
  }
}
