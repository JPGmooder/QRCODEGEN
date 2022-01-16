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
      required this.gradientCallBack,
      required this.isCustomEyeColorCallBack,
      required this.radioCallBack})
      : super(key: key);

  void Function(RadioButton) radioCallBack;
  void Function(Gradient) gradientCallBack;
  void Function(bool) isCustomEyeColorCallBack;

  TextEditingController firstcolorController;
  void Function(Color) firstColor;
  TextEditingController secondcolorController;
  void Function(Color) secondColor;
  TextEditingController firsteyecolorController;
  void Function(Color) firsteyeColor;
  TextEditingController secondeyecolorController;
  void Function(Color) secondeyeColor;
  TextEditingController backgroundController;
  void Function(Color) backgroundColor;
  @override
  _SetColorContentState createState() => _SetColorContentState();
}

int getColorValueFromHex(String hex) {
  hex = hex.replaceAll('#', '');
  return (int.parse('0xff' + hex));
}

class _SetColorContentState extends State<SetColorContent> {
  late Color _fc;
  late Color _sc;
  late Color _fec;
  late Color _sec;
  late Color _bc;
  late RadioButton radCurent;
  Gradient? currentGradient;
  late bool isCustomEyeColor;
  @override
  void initState() {
    isCustomEyeColor = false;
    _fc = mainColor;
    _sc = mainColor;
    _fec = mainColor;
    _sec = mainColor;
    _bc = Colors.white;

    radCurent = RadioButton.singleColor;
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
                        groupValue: radCurent,
                        onChanged: (newValue) => setState(() {
                          radCurent = newValue!;
                          widget.radioCallBack(radCurent);
                        }),
                      ),
                      Text("Single color")
                    ],
                  ),
                  Row(
                    children: [
                      Radio<RadioButton>(
                          value: RadioButton.gradient,
                          groupValue: radCurent,
                          onChanged: (newValue) => setState(() {
                                radCurent = newValue!;
                                widget.radioCallBack(radCurent);
                                currentGradient = Gradient.LinearGradient;
                                widget.gradientCallBack(currentGradient!);
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
                      widget.isCustomEyeColorCallBack(isCustomEyeColor);
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
            mainAxisAlignment: radCurent == RadioButton.gradient
                ? MainAxisAlignment.spaceEvenly
                : MainAxisAlignment.start,
            children: [
              ColorPickerWidget(
                  onColorChanged: (color) => setState(() {
                        _fc = color;
                        widget.firstColor(_fc);
                      }),
                  pickerColor: _fc,
                  textController: widget.firstcolorController),
              if (radCurent == RadioButton.gradient)
                ColorPickerWidget(
                    onColorChanged: (color) => setState(() {
                          _sc = color;
                          widget.secondColor(_sc);
                        }),
                    pickerColor: _sc,
                    textController: widget.secondcolorController),
            ],
          ),
          if (radCurent == RadioButton.gradient)
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
                                  bufferColor = _sc;
                                  _fc = _sc;
                                  _sc = bufferColor;
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
                            currentGradient = gradient!;
                            widget.gradientCallBack(this.currentGradient!);
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
                    onColorChanged: (color) => setState(() {
                          _fec = color;
                          widget.firsteyeColor(_fec);
                        }),
                    pickerColor: _fec,
                    textController: widget.firsteyecolorController),
                if (isCustomEyeColor)
                  ColorPickerWidget(
                      onColorChanged: (color) => setState(() {
                            _sec = color;
                            widget.secondeyeColor(_sec);
                          }),
                      pickerColor: _sec,
                      textController: widget.secondeyecolorController),
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
                                      bufferColor = _fec;
                                      _fec = _sec;
                                      _sec = bufferColor;
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
                                      _fec = _fc;
                                      widget.firsteyecolorController.text =
                                          widget.firstcolorController.text;
                                      _sec = _sc;
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
                    _bc = color;
                    widget.backgroundColor(_bc);
                  }),
              pickerColor: _bc,
              textController: widget.backgroundController),
        ],
      ),
    );
  }
}
