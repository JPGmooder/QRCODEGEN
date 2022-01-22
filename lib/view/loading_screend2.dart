import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';

class LoadingScreen2 extends StatefulWidget {
  LoadingScreen2({Key? key}) : super(key: key);

  @override
  _LoadingScreenState2 createState() => _LoadingScreenState2();

  Stream<bool> getAbramov() async* {
    bool isExtends = false;
    for (int i = 0; i < double.infinity; i++) {
      await Future.delayed(Duration(milliseconds: 1500));
      isExtends = !isExtends;
      yield isExtends;
    }
  }
}

class _LoadingScreenState2 extends State<LoadingScreen2>
    with SingleTickerProviderStateMixin {
  late bool isextends;

  @override
  void initState() {
    isextends = false;
    widget.getAbramov().listen((event) {
      setState(() {
        isextends = event;
      });
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedContainer(
        duration: Duration(milliseconds: 1500),
        height:
            isextends ? double.parse(Random().nextInt(1000).toString()) : 10,
        width: isextends ? double.parse(Random().nextInt(1000).toString()) : 10,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("lib/consts/assets/img/abramov.jpg"))),
      ),
    );
  }
}
