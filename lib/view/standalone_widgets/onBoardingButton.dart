import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:trionproj/consts/colors.dart';

class onBoardingMainButton extends ElevatedButton {
  onBoardingMainButton({
    Key? key,
    Color? buttonColor,
    required this.onPress,
    required this.child,
  }) : super(
            key: key,
            onPressed: onPress,
            child: child,
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                elevation: 0,
                primary: buttonColor ?? mainColor,
                onPrimary: Colors.black));
  final void Function() onPress;
  final Widget child;
}
