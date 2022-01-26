import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'package:trionproj/consts/strings.dart';

class TermsOfUse extends StatefulWidget {
  TermsOfUse({Key? key}) : super(key: key);

  @override
  State<TermsOfUse> createState() => _TermsOfUseState();
}

class _TermsOfUseState extends State<TermsOfUse> {
  late ScrollController controller;
  bool isReaded = false;
  @override
  void initState() {
    controller = ScrollController();
    controller.addListener(() {
      if (controller.position.pixels == controller.position.maxScrollExtent) {
        setState(() {
          isReaded = true;
        });
      } else if (isReaded == true) {
        setState(() {
          isReaded = false;
        });
      }
    });

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return WillPopScope(
        onWillPop: () async => false,
        child: AlertDialog(
          backgroundColor: NeumorphicColors.background,
          title: SizedBox(
            width: size.width * 0.6,
            height: 30,
            child: FittedBox(
              fit: BoxFit.contain,
              child: NeumorphicText(
                "Пользовательское соглашение",
                style: NeumorphicStyle(depth: 14, color: Colors.black54),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          content: Neumorphic(
            child: SizedBox(
              width: size.width * 0.8,
              height: size.height * 0.7,
              child: SafeArea(
                child: SingleChildScrollView(
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      termsofuse,
                      textAlign: TextAlign.justify,
                      softWrap: true,
                    ),
                  ),
                  controller: controller,
                ),
              ),
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(bottom: 15, right: 15, left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      width: size.width > 800
                          ? size.width * 0.1
                          : size.width * 0.25,
                      height: size.width > 800
                          ? size.width * 0.05
                          : size.width > 400
                              ? size.width * 0.06
                              : size.width * 0.1,
                      child: NeumorphicButton(
                        pressed: isReaded,
                        style: NeumorphicStyle(
                            depth: isReaded ? 10 : 0,
                            shape: isReaded
                                ? NeumorphicShape.concave
                                : NeumorphicShape.flat,
                            color: isReaded
                                ? Colors.green[300]
                                : Colors.grey[300]),
                        onPressed: () =>
                            isReaded ? Navigator.of(context).pop(true) : null,
                        child: FittedBox(
                            fit: BoxFit.contain, child: Text("Принять")),
                      )),
                  SizedBox(
                    width:
                        size.width > 800 ? size.width * 0.1 : size.width * 0.25,
                    height: size.width > 800
                        ? size.width * 0.05
                        : size.width > 400
                            ? size.width * 0.06
                            : size.width * 0.1,
                    child: NeumorphicButton(
                      style: NeumorphicStyle(
                          color: Colors.red[300],
                          shape: NeumorphicShape.convex),
                      onPressed: () {
                        Navigator.of(context).pop(false);
                      },
                      child: FittedBox(
                          fit: BoxFit.contain, child: Text("Отклонить")),
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
