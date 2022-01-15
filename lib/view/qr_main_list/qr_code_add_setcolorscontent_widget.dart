import 'package:flutter/material.dart';
import 'package:trionproj/consts/colors.dart';
import 'package:trionproj/models/textstyles.dart';
import 'package:trionproj/view/standalone_widgets/color_picker_widget.dart';

enum RadioButton { singleColor, gradient }
enum Gradient { LinearGradient, RadialGradient }

class SetColorContent extends StatefulWidget {
  SetColorContent({Key? key}) : super(key: key);

  @override
  _SetColorContentState createState() => _SetColorContentState();
}

class _SetColorContentState extends State<SetColorContent> {
  late RadioButton _radioCurrentValue;
  Gradient? currentGradient;
  late bool isCustomEyeColor;
  late TextEditingController firstcolorController;
  late Color firstColor;
  late TextEditingController secondcolorController;
  late Color secondColor;
  late TextEditingController firsteyecolorController;
  late Color firsteyeColor;
  late TextEditingController secondeyecolorController;
  late Color secondeyeColor;
  late TextEditingController backgroundController;
  late Color backgroundColor;

  @override
  void initState() {
    firstColor = mainColor;
    secondColor = mainColor;
    firstcolorController = TextEditingController();
    secondcolorController = TextEditingController();
    firsteyecolorController = TextEditingController();
    secondeyecolorController = TextEditingController();
    backgroundController = TextEditingController();
    backgroundColor = Colors.white;
    firsteyeColor = mainColor;
    secondeyeColor = mainColor;
    String mainColorCode = "3A557E";
    firstcolorController.text = mainColorCode;
    secondcolorController.text = mainColorCode;
    firsteyecolorController.text = mainColorCode;
    secondeyecolorController.text = mainColorCode;
    backgroundController.text = "FFFFFF";
    isCustomEyeColor = false;
    _radioCurrentValue = RadioButton.singleColor;
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
                        groupValue: _radioCurrentValue,
                        onChanged: (newValue) => setState(() {
                          _radioCurrentValue = newValue!;
                          currentGradient = null;
                        }),
                      ),
                      Text("Single color")
                    ],
                  ),
                  Row(
                    children: [
                      Radio<RadioButton>(
                          value: RadioButton.gradient,
                          groupValue: _radioCurrentValue,
                          onChanged: (newValue) => setState(() {
                                _radioCurrentValue = newValue!;
                                currentGradient = Gradient.LinearGradient;
                              })),
                      Text("Color gradient")
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: isCustomEyeColor,
                    onChanged: (newValue) => setState(() {
                      isCustomEyeColor = newValue!;
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
            mainAxisAlignment: _radioCurrentValue == RadioButton.gradient
                ? MainAxisAlignment.spaceEvenly
                : MainAxisAlignment.start,
            children: [
              ColorPickerWidget(
                  onColorChanged: (color) => firstColor = color,
                  pickerColor: firstColor,
                  textController: firstcolorController),
              if (_radioCurrentValue == RadioButton.gradient)
                ColorPickerWidget(
                    onColorChanged: (color) => secondColor = color,
                    pickerColor: secondColor,
                    textController: secondcolorController),
            ],
          ),
          if (_radioCurrentValue == RadioButton.gradient)
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
                                  bufferColor = firstColor;
                                  firstColor = secondColor;
                                  secondColor = bufferColor;
                                  String bufferText;

                                  bufferText = firstcolorController.text;
                                  firstcolorController.text =
                                      secondcolorController.text;
                                  secondcolorController.text = bufferText;
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
                            currentGradient = gradient;
                          }),
                          value: currentGradient,
                        )
                      ],
                    ),
                  )),
            ),
          if (isCustomEyeColor)
            Text(
              "Eye color",
              textAlign: TextAlign.left,
              style: customTextStyles.Titile1(
                  size.height * 0.3, mainColor.withAlpha(100)),
            ),
          if (isCustomEyeColor)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ColorPickerWidget(
                    onColorChanged: (color) => firsteyeColor = color,
                    pickerColor: firsteyeColor,
                    textController: firsteyecolorController),
                if (isCustomEyeColor)
                  ColorPickerWidget(
                      onColorChanged: (color) => secondColor = color,
                      pickerColor: secondeyeColor,
                      textController: secondeyecolorController),
              ],
            ),
          if (isCustomEyeColor)
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
                                      bufferColor = firsteyeColor;
                                      firsteyeColor = secondeyeColor;
                                      secondeyeColor = bufferColor;
                                      String bufferText;

                                      bufferText = firsteyecolorController.text;
                                      firsteyecolorController.text =
                                          secondeyecolorController.text;
                                      secondeyecolorController.text =
                                          bufferText;
                                    }),
                                icon: const Icon(Icons.compare_arrows_rounded)),
                            TextButton(
                                onPressed: () => setState(() {
                                      firsteyeColor = firstColor;
                                      firsteyecolorController =
                                          firstcolorController;
                                      secondeyeColor = secondColor;
                                      secondeyecolorController.text =
                                          secondcolorController.text;
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
              onColorChanged: (color) => backgroundColor = color,
              pickerColor: backgroundColor,
              textController: backgroundController),
        ],
      ),
    );
  }
}
