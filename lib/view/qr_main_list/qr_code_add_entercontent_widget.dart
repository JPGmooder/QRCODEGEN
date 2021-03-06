import 'package:flutter/material.dart';
import 'package:trionproj/view/standalone_widgets/text_input_decoration.dart';

class QrCodeAddEnterContentWidget extends StatelessWidget {
  QrCodeAddEnterContentWidget({Key? key, required this.controller})
      : super(key: key);
  TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: CustomTextField(controller: this.controller, text: "Your URL",));
  }
}
