import 'package:flutter/material.dart';
import 'package:trionproj/consts/colors.dart';
import 'package:trionproj/models/textstyles.dart';
import 'package:trionproj/view/standalone_widgets/color_picker_widget.dart';

enum RadioButton { singleColor, gradient }
enum Gradient { LinearGradient, RadialGradient }

class SetColorContent extends StatefulWidget {
  SetColorContent(
      {Key? key,
      required this.backgroundColor,
      required this.backgroundController,
      required this.firstColor,
      required this.firstcolorController,
      required this.firsteyeColor,
      required this.firsteyecolorController,
      required this.secondColor,
      required this.secondcolorController,
      required this.secondeyeColor,
      required this.secondeyecolorController,
      required this.radioCurrentValue,
      required this.currentGradient,
      required this.isCustomEyeColor})
      : super(key: key);
  bool isCustomEyeColor;
  Gradient? currentGradient;
  RadioButton radioCurrentValue;
  TextEditingController firstcolorController;
  Color firstColor;
  TextEditingController secondcolorController;
  Color secondColor;
  TextEditingController firsteyecolorController;
  Color firsteyeColor;
  TextEditingController secondeyecolorController;
  Color secondeyeColor;
  TextEditingController backgroundController;
  Color backgroundColor;
  @override
  _SetColorContentState createState() => _SetColorContentState();
}

int getColorValueFromHex(String hex) {
  hex = hex.replaceAll('#', '');
  return (int.parse('0xff' + hex));
}

class _SetColorContentState extends State<SetColorContent> {
  @override
  void initState() {
    String mainColorCode = "3A557E";
    widget.firstcolorController.text = mainColorCode;
    widget.secondcolorController.text = mainColorCode;
    widget.firsteyecolorController.text = mainColorCode;
    widget.secondeyecolorController.text = mainColorCode;
    widget.backgroundController.text = "FFFFFF";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Row(
                children: [
                  Row(
                    children: [
                      Radio<RadioButton>(
                        value: RadioButton.singleColor,
                        groupValue: widget.radioCurrentValue,
                        onChanged: (newValue) => setState(() {
                          widget.radioCurrentValue = newValue!;
                          widget.currentGradient = null;
                        }),
                      ),
                      Text("Single color")
                    ],
                  ),
                  Row(
                    children: [
                      Radio<RadioButton>(
                          value: RadioButton.gradient,
                          groupValue: widget.radioCurrentValue,
                          onChanged: (newValue) => setState(() {
                                widget.radioCurrentValue = newValue!;
                                widget.currentGradient =
                                    Gradient.LinearGradient;
                              })),
                      Text("Color gradient")
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: widget.isCustomEyeColor,
                    onChanged: (newValue) => setState(() {
                      widget.isCustomEyeColor = newValue!;
                    }),
                  ),
                  Text("Custom Eye Color")
                ],
              )
            ],
          ),
          Text(
            "Foreground color",
            textAlign: TextAlign.left,
            style: customTextStyles.Titile1(
                size.height * 0.3, mainColor.withAlpha(100)),
          ),
          Row(
            mainAxisAlignment: widget.radioCurrentValue == RadioButton.gradient
                ? MainAxisAlignment.spaceEvenly
                : MainAxisAlignment.start,
            children: [
              ColorPickerWidget(
                  onColorChanged: (color) => setState(() {
                        widget.firstColor = color;
                      }),
                  pickerColor: widget.firstColor,
                  textController: widget.firstcolorController),
              if (widget.radioCurrentValue == RadioButton.gradient)
                ColorPickerWidget(
                    onColorChanged: (color) => setState(() {
                          widget.secondColor = color;
                        }),
                    pickerColor: widget.secondColor,
                    textController: widget.secondcolorController),
            ],
          ),
          if (widget.radioCurrentValue == RadioButton.gradient)
            Center(
              child: SizedBox(
                  width: size.width * 0.6,
                  child: Card(
                    elevation: 10,
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () => setState(() {
                                  Color bufferColor;
                                  bufferColor = widget.firstColor;
                                  widget.firstColor = widget.secondColor;
                                  widget.secondColor = bufferColor;
                                  String bufferText;

                                  bufferText = widget.firstcolorController.text;
                                  widget.firstcolorController.text =
                                      widget.secondcolorController.text;
                                  widget.secondcolorController.text =
                                      bufferText;
                                }),
                            icon: const Icon(Icons.compare_arrows_rounded)),
                        DropdownButton<Gradient>(
                          items: const [
                            DropdownMenuItem(
                              child: Text("Linear Gradient"),
                              value: Gradient.LinearGradient,
                            ),
                            DropdownMenuItem(
                              child: Text("Radial Gradient"),
                              value: Gradient.RadialGradient,
                            )
                          ],
                          onChanged: (gradient) => setState(() {
                            widget.currentGradient = gradient!;
                            print(widget.currentGradient);
                          }),
                          value: widget.currentGradient,
                        )
                      ],
                    ),
                  )),
            ),
          if (widget.isCustomEyeColor)
            Text(
              "Eye color",
              textAlign: TextAlign.left,
              style: customTextStyles.Titile1(
                  size.height * 0.3, mainColor.withAlpha(100)),
            ),
          if (widget.isCustomEyeColor)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ColorPickerWidget(
                    onColorChanged: (color) => setState(() {
                          widget.firsteyeColor = color;
                        }),
                    pickerColor: widget.firsteyeColor,
                    textController: widget.firsteyecolorController),
                if (widget.isCustomEyeColor)
                  ColorPickerWidget(
                      onColorChanged: (color) => setState(() {
                            widget.secondeyeColor = color;
                          }),
                      pickerColor: widget.secondeyeColor,
                      textController: widget.secondeyecolorController),
              ],
            ),
          if (widget.isCustomEyeColor)
            Center(
                child: SizedBox(
                    width: size.width * 0.6,
                    child: Card(
                        elevation: 10,
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () => setState(() {
                                      Color bufferColor;
                                      bufferColor = widget.firsteyeColor;
                                      widget.firsteyeColor =
                                          widget.secondeyeColor;
                                      widget.secondeyeColor = bufferColor;
                                      String bufferText;

                                      bufferText =
                                          widget.firsteyecolorController.text;
                                      widget.firsteyecolorController.text =
                                          widget.secondeyecolorController.text;
                                      widget.secondeyecolorController.text =
                                          bufferText;
                                    }),
                                icon: const Icon(Icons.compare_arrows_rounded)),
                            TextButton(
                                onPressed: () => setState(() {
                                      widget.firsteyeColor = widget.firstColor;
                                      widget.firsteyecolorController =
                                          widget.firstcolorController;
                                      widget.secondeyeColor =
                                          widget.secondColor;
                                      widget.secondeyecolorController.text =
                                          widget.secondcolorController.text;
                                    }),
                                child: Text("Copy foreground"))
                          ],
                        )))),
          Text(
            "Background color",
            textAlign: TextAlign.left,
            style: customTextStyles.Titile1(
                size.height * 0.3, mainColor.withAlpha(100)),
          ),
          ColorPickerWidget(
              onColorChanged: (color) => setState(() {
                    widget.backgroundColor = color;
                  }),
              pickerColor: widget.backgroundColor,
              textController: widget.backgroundController),
        ],
      ),
    );
  }
}
