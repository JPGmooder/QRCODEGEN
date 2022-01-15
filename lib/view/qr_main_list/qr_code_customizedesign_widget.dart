import 'dart:math';

import 'package:flutter/material.dart';
import 'package:trionproj/consts/strings.dart';

class CustomeDesignWidget extends StatelessWidget {
   CustomeDesignWidget({Key? key, required this.Eye, required this.EyeBallShape, required this.Shape}) : super(key: key);
  String Shape;
  String Eye;
  String EyeBallShape;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ShapePicker(
          pickedShape: Shape,
          pickerTitle: Text("Shape: "),
          providedShapes: assetShapes,
        ),
        ShapePicker(
          pickedShape: Eye,
          pickerTitle: Text("Eye: "),
          providedShapes: assetEyes,
        ),
        ShapePicker(
          pickedShape: EyeBallShape,
          pickerTitle: Text("Eye ball shape: "),
          providedShapes: assetEyeBallShapes,
        )
      ],
    );
  }
}

class ShapePicker extends StatefulWidget {
  ShapePicker(
      {Key? key, required this.providedShapes, required this.pickerTitle, required this.pickedShape})
      : super(key: key);
  List<String> providedShapes;
  late String pickedShape;
  Text pickerTitle;
  @override
  _ShapePickerState createState() => _ShapePickerState();
}

class _ShapePickerState extends State<ShapePicker> {
  @override
  void initState() {
    widget.pickedShape = widget.providedShapes[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.6,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          widget.pickerTitle,
          SizedBox(
            width: size.width * 0.05,
          ),
          DropdownButton<String>(
              value: widget.pickedShape,
              items: widget.providedShapes
                  .map((e) => DropdownMenuItem<String>(
                      value: e,
                      child: SizedBox(
                        height: size.height * 0.2,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(e),
                        ),
                      )))
                  .toList(),
              onChanged: (s) => setState(() {
                    widget.pickedShape = s!;
                  })),
        ],
      ),
    );

    // SizedBox(
    //   width: size.width * 0.8,
    //   height: size.height * 0.4,
    //   child: GridView.builder(
    //     gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
    //         maxCrossAxisExtent: size.width * 0.5),
    //     itemCount: widget.providedShapes.length,
    //     itemBuilder: (context, index) {
    //       var shapeString = widget.providedShapes[index];
    //       return SizedBox(
    //         width: size.width * 0.1,
    //         height: 30,
    //         child: RadioListTile(
    //             title: Image.asset(widget.providedShapes[index]),
    //             value: shapeString,
    //             groupValue: widget.pickedShape,
    //             onChanged: (shape) => setState(() {
    //                   widget.pickedShape = shape as String;
    //                 })),
    //       );
    //     },
    //   ),
    // );
  }
}
