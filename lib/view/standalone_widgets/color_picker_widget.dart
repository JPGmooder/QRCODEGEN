import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter/cupertino.dart';

class ColorPickerWidget extends StatefulWidget {
  ColorPickerWidget({
    Key? key,
    required this.pickerColor,
    required this.textController,
    required this.onColorChanged,
  }) : super(key: key);
  Color pickerColor;
  void Function(Color) onColorChanged;
  TextEditingController textController;

  @override
  _ColorPickerWidgetState createState() => _ColorPickerWidgetState();
}

class _ColorPickerWidgetState extends State<ColorPickerWidget> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return GestureDetector(
        onTap: showColorPicker(
            onColorChanged: widget.onColorChanged,
            ctx: context,
            pickerColor: widget.pickerColor,
            textController: widget.textController),
        child: SizedBox(
          width: size.width * 0.35,
          child: Card(
            elevation: 10,
            child: Row(
              children: [
                Container(
                  width: size.width * 0.1,
                  height: size.width * 0.1,
                  color: widget.pickerColor,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('#' + widget.textController.text)
                // CupertinoTextField(
                //   controller: widget.textController,

                //   enabled: false,
                //   prefix: const Padding(
                //       padding: EdgeInsets.only(left: 8), child: Icon(Icons.tag)),
                // )
              ],
            ),
          ),
        ));
  }
}

void Function() showColorPicker(
    {required BuildContext ctx,
    required Color pickerColor,
    required void Function(Color) onColorChanged,
    required TextEditingController textController}) {
  return () {
    showDialog(
      context: ctx,
      builder: (BuildContext context) {
        return AlertDialog(
          scrollable: true,
          titlePadding: const EdgeInsets.all(0),
          contentPadding: const EdgeInsets.all(0),
          content: Column(
            children: [
              ColorPicker(
                pickerColor: pickerColor,
                onColorChanged: onColorChanged,
                colorPickerWidth: MediaQuery.of(context).size.width * 0.7,
                pickerAreaHeightPercent: 0.7,
                enableAlpha: false,
                displayThumbColor: true,
                paletteType: PaletteType.hsvWithHue,
                labelTypes: const [],
                pickerAreaBorderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(2),
                  topRight: Radius.circular(2),
                ),
                hexInputController: textController, // <- here
                portraitOnly: true,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                child: CupertinoTextField(
                  enabled: false,
                  controller: textController,
                  prefix: const Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Icon(Icons.tag)),
                  suffix: Row(
                    children: [
                      IconButton(
                          icon: const Icon(Icons.content_paste_rounded),
                          onPressed: () => Clipboard.setData(
                              ClipboardData(text: textController.text))),
                              
                    ],
                  ),
                  autofocus: false,
                  maxLength: 9,
                  inputFormatters: [
                    UpperCaseTextFormatter(),
                    FilteringTextInputFormatter.allow(RegExp(kValidHexPattern)),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  };
}
