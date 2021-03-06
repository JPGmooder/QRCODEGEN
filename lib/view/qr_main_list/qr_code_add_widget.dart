import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter/material.dart';
import 'package:trionproj/consts/colors.dart';
import 'package:trionproj/logic/qr_bloc/main_qr_bloc.dart';
import 'package:trionproj/logic/qr_code_creator_cubit/qr_code_creator_cubit.dart';
import 'package:trionproj/models/qr_code_model.dart';
import 'package:trionproj/models/textstyles.dart';
import 'package:trionproj/view/qr_main_list/qr_code_add_entercontent_widget.dart';
import 'package:trionproj/view/qr_main_list/qr_code_add_logoimage_widget.dart';
import 'package:trionproj/view/qr_main_list/qr_code_add_setcolorscontent_widget.dart'
    as setcolor;
import 'package:trionproj/view/qr_main_list/qr_code_customizedesign_widget.dart';

class QrCodeAddBody extends StatefulWidget {
  QrCodeAddBody({Key? key}) : super(key: key);

  @override
  State<QrCodeAddBody> createState() => _QrCodeAddBodyState();
}

class _QrCodeAddBodyState extends State<QrCodeAddBody> with ChangeNotifier {
  late TextEditingController linkController;
//* Setcolors
  late TextEditingController firstcolorController;
  late TextEditingController secondcolorController;
  late TextEditingController firsteyecolorController;
  late TextEditingController secondeyecolorController;
  late TextEditingController backgroundController;
  @override
  void initState() {
    firstcolorController = TextEditingController();
    secondcolorController = TextEditingController();
    firsteyecolorController = TextEditingController();
    secondeyecolorController = TextEditingController();
    backgroundController = TextEditingController();
    linkController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    firstcolorController.dispose();
    secondcolorController.dispose();
    firsteyecolorController.dispose();
    secondeyecolorController.dispose();
    backgroundController.dispose();
    linkController.dispose();
    super.dispose();
  }

  setcolor.RadioButton radioCurrentValue = setcolor.RadioButton.singleColor;
  void setRadioCurrentValue(setcolor.RadioButton state) =>
      this.radioCurrentValue = state;

  setcolor.Gradient? currentGradient;
  void setCurrentGradient(setcolor.Gradient state) => currentGradient = state;

  bool isCustomEyeColor = false;
  void setIsCustomEyeColor(bool state) => isCustomEyeColor = state;

  Color firstColor = mainColor;
  void setfirstColor(Color state) => firstColor = state;

  Color secondColor = mainColor;
  void setsecondColor(Color state) => secondColor = state;

  Color firsteyeColor = mainColor;
  void setfirsteyeColor(Color state) => firsteyeColor = state;

  Color secondeyeColor = mainColor;
  void setsecondeyeColor(Color state) => secondeyeColor = state;

  Color backgroundColor = Colors.white;
  void setbackgroundColor(Color state) => backgroundColor = state;

  String pickedImage = "";
  void setPickedImage(String path) => pickedImage = path;

  String pickedEye = "";
  void setPickedEye(String path) => pickedEye = path;

  String pickedEyeBallShape = "";
  void setpickedEyeBallShape(String path) => pickedEyeBallShape = path;

  String pickedShape = "";
  void setpickedShape(String path) => pickedShape = path;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.9,
      child: ListView(
        children: [
          QrCodeAddWidget(
            contentHeigh: size.height * 0.1,
            child: QrCodeAddEnterContentWidget(
              controller: linkController,
            ),
            widgetIcon: Icons.link,
            widgetTitle: "ENTER CONTENT",
          ),

          //TODO: ?? ?????? ?????????????? ???? ???????????????? ???????????????????? ???????? ??????????. ????????????????.
          QrCodeAddWidget(
            contentHeigh: size.height * 0.4,
            widgetTitle: "SET COLORS",
            widgetIcon: Icons.brush,
            child: SingleChildScrollView(
                child: setcolor.SetColorContent(
                    gradientCallBack: setCurrentGradient,
                    isCustomEyeColorCallBack: setIsCustomEyeColor,
                    radioCallBack: setRadioCurrentValue,
                    backgroundColor: setbackgroundColor,
                    backgroundController: backgroundController,
                    firstColor: setfirstColor,
                    firstcolorController: firstcolorController,
                    firsteyeColor: setfirsteyeColor,
                    firsteyecolorController: firsteyecolorController,
                    secondColor: setsecondColor,
                    secondcolorController: secondcolorController,
                    secondeyeColor: setsecondeyeColor,
                    secondeyecolorController: secondeyecolorController)),
          ),
          QrCodeAddWidget(
            contentHeigh: size.height * 0.3,
            widgetTitle: "ADD LOGO IMAGE",
            widgetIcon: Icons.image,
            child: SingleChildScrollView(
              child: AddLogoImageWidget(
                pathCallBack: setPickedImage,
              ),
            ),
          ),
          QrCodeAddWidget(
            contentHeigh: size.height * 0.4,
            widgetTitle: "CUSTOMIZE DESIGN",
            widgetIcon: Icons.qr_code_rounded,
            child: CustomeDesignWidget(
              pickEyeCallback: setPickedEye,
              pickEyeBallCallback: setpickedEyeBallShape,
              pickShapeCallback: setpickedShape,
            ),
          ),
          ElevatedButton(
              onPressed: () => showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                        content: !linkController.text.startsWith("http://") &&
                                !linkController.text.startsWith("https://")
                            ? Text(
                                'Url must be provided in "ENTER CONTENT" section')
                            : BlocBuilder<QrCodeCreatorCubit,
                                    QrCodeCreatorState>(
                                builder: (ctx, state) => state.maybeMap(
                                    orElse: () => Container(),
                                    loading: (_) =>
                                        CircularProgressIndicator.adaptive(),
                                    created: (state) => Column(children: [
                                          state.imagePath.startsWith("http")
                                              ? CachedNetworkImage(
                                                  imageUrl: state.imagePath)
                                              : Image.file(
                                                  File(state.imagePath)),
                                          Column(children: [
                                            ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    primary: Colors.red[200]),
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                  context
                                                      .read<
                                                          QrCodeCreatorCubit>()
                                                      .emit(
                                                          const QrCodeCreatorState
                                                              .initial());
                                                },
                                                child: Text("Discard code")),
                                            ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    primary: Colors.green[200]),
                                                onPressed: () {
                                                  context
                                                      .read<MainQrBloc>()
                                                      .add(MainQrEvent.save(
                                                          linkToCode:
                                                              pickedImage));
                                                  Navigator.of(context).pop();
                                                  context
                                                      .read<
                                                          QrCodeCreatorCubit>()
                                                      .emit(QrCodeCreatorState
                                                          .initial());
                                                },
                                                child: Text("Save Qr code"))
                                          ])
                                        ]),
                                    initial: (_) => SingleChildScrollView(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                  "You are going to create a QR code with the following parameters:"),
                                              Text(
                                                  "Content URL : ${linkController.text}"),
                                              Text(
                                                  "Color type: ${radioCurrentValue.name}"),
                                              if (radioCurrentValue ==
                                                  setcolor
                                                      .RadioButton.singleColor)
                                                _ColoredText(
                                                  color: firstColor,
                                                  controllerText:
                                                      firstcolorController.text,
                                                  title:
                                                      "Main foreground color: ",
                                                ),
                                              if (radioCurrentValue ==
                                                  setcolor.RadioButton.gradient)
                                                Text(
                                                    "Gradient type: ${currentGradient!.name} "),
                                              if (radioCurrentValue ==
                                                  setcolor.RadioButton.gradient)
                                                _ColoredText(
                                                  color: firstColor,
                                                  controllerText:
                                                      firstcolorController.text,
                                                  title:
                                                      "Start foreground color: ",
                                                ),
                                              if (radioCurrentValue ==
                                                  setcolor.RadioButton.gradient)
                                                _ColoredText(
                                                  color: secondColor,
                                                  controllerText:
                                                      secondcolorController
                                                          .text,
                                                  title:
                                                      "End foreground color: ",
                                                ),
                                              if (isCustomEyeColor)
                                                _ColoredText(
                                                  color: firsteyeColor,
                                                  controllerText:
                                                      firsteyecolorController
                                                          .text,
                                                  title: "First eye color: ",
                                                ),
                                              if (isCustomEyeColor)
                                                _ColoredText(
                                                  color: secondeyeColor,
                                                  controllerText:
                                                      secondeyecolorController
                                                          .text,
                                                  title: "Second eye color: ",
                                                ),
                                              _ColoredText(
                                                color: backgroundColor ==
                                                        Colors.white
                                                    ? Colors.black
                                                    : backgroundColor,
                                                controllerText:
                                                    backgroundController.text,
                                                title: "Background color: ",
                                              ),
                                              if (pickedImage.isNotEmpty)
                                                Row(
                                                  children: [
                                                    Text("Image: "),
                                                    SizedBox(
                                                      width: size.width * 0.2,
                                                      height: size.width * 0.2,
                                                      child: pickedImage
                                                              .startsWith(
                                                                  "http")
                                                          ? CachedNetworkImage(
                                                              imageUrl:
                                                                  pickedImage,
                                                            )
                                                          : Image.file(File(
                                                              pickedImage)),
                                                    )
                                                  ],
                                                ),
                                              Row(
                                                children: [
                                                  Text("Picked shape: "),
                                                  SizedBox(
                                                      width: size.width * 0.2,
                                                      height: size.width * 0.2,
                                                      child: Image.asset(
                                                          pickedShape))
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text("Picked eye: "),
                                                  SizedBox(
                                                      width: size.width * 0.2,
                                                      height: size.width * 0.2,
                                                      child: Image.asset(
                                                          pickedEye))
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text("Picked eye ball: "),
                                                  SizedBox(
                                                      width: size.width * 0.1,
                                                      height: size.width * 0.2,
                                                      child: Image.asset(
                                                          pickedEyeBallShape))
                                                ],
                                              ),
                                              ElevatedButton(
                                                  onPressed: () => context.read<QrCodeCreatorCubit>().generateQrCode(QrCodeConfigModel(
                                                      data: linkController.text,
                                                      body: shapeTransformer(
                                                          pickedShape),
                                                      eye: shapeTransformer(
                                                          pickedEye),
                                                      eyeBall: shapeTransformer(
                                                          pickedEyeBallShape),
                                                      erf1: [],
                                                      erf2: [],
                                                      erf3: [],
                                                      brf1: [],
                                                      brf2: [],
                                                      brf3: [],
                                                      bodyColor: "#" +
                                                          firstcolorController
                                                              .text,
                                                      bgColor: "#" +
                                                          backgroundController
                                                              .text,
                                                      eye1Color: "#" +
                                                          firsteyecolorController
                                                              .text,
                                                      eye2Color: "#" +
                                                          firsteyecolorController
                                                              .text,
                                                      eye3Color: "#" +
                                                          firsteyecolorController
                                                              .text,
                                                      eyeBall1Color: "#" +
                                                          secondcolorController
                                                              .text,
                                                      eyeBall2Color: "#" + secondcolorController.text,
                                                      eyeBall3Color: "#" + secondcolorController.text,
                                                      gradientColor1: currentGradient == null ? "" : "#" + firstcolorController.text,
                                                      gradientColor2: currentGradient == null ? "" : "#" + secondcolorController.text,
                                                      gradientType: currentGradient == null ? "" : currentGradient!.name.split("G").first.toLowerCase(),
                                                      gradientOnEyes: false,
                                                      logo: pickedImage == "" ? "https://firebasestorage.googleapis.com/v0/b/trionproj.appspot.com/o/initial_logos%2Fic_twitter_rounded.jpg?alt=media&token=48c60004-e7ea-400e-b731-20d36ac3fcae" : pickedImage)),
                                                  child: Text("Create QrCode"))
                                            ],
                                          ),
                                        ))),
                      )),
              child: Text("Create QrCode!"))
        ],
      ),
    );
  }

  String shapeTransformer(String shape) =>
      shape.split("/").last.replaceAll(".png", "");
}

class _ColoredText extends StatelessWidget {
  _ColoredText(
      {Key? key,
      required this.color,
      required this.controllerText,
      required this.title})
      : super(key: key);
  String controllerText;
  String title;
  Color color;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(fontSize: size.width * 0.04),
        ),
        Text(
          color == Colors.white || controllerText == "FFFFFF"
              ? "White"
              : "#" + controllerText,
          softWrap: true,
          style: TextStyle(
              color: color == Colors.white || controllerText == "FFFFFF"
                  ? Colors.black
                  : color),
        )
      ],
    );
  }
}

class QrCodeAddWidget extends StatefulWidget {
  QrCodeAddWidget(
      {Key? key,
      required this.contentHeigh,
      required this.widgetIcon,
      required this.widgetTitle,
      required this.child})
      : super(key: key);
  IconData widgetIcon;
  String widgetTitle;
  Widget child;
  double contentHeigh;
  @override
  _QrCodeAddWidgetState createState() => _QrCodeAddWidgetState();
}

class _QrCodeAddWidgetState extends State<QrCodeAddWidget> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Card(
      child: SingleChildScrollView(
        child: Column(
          children: [
            AnimatedCrossFade(
                crossFadeState: isExpanded
                    ? CrossFadeState.showSecond
                    : CrossFadeState.showFirst,
                duration: Duration(milliseconds: 500),
                firstChild: ListTile(
                  onTap: () => setState(() {
                    isExpanded = !isExpanded;
                  }),
                  leading: Icon(
                    widget.widgetIcon,
                    color: Colors.black,
                  ),
                  title: Text(
                    widget.widgetTitle,
                    style: customTextStyles.Titile1(
                        size.width * 0.8, mainColor.withAlpha(150)),
                  ),
                ),
                secondChild: Container(
                  color: mainColor,
                  child: ListTile(
                    onTap: () => setState(() {
                      isExpanded = !isExpanded;
                    }),
                    leading: Icon(
                      widget.widgetIcon,
                      color: Colors.white,
                    ),
                    title: Text(
                      widget.widgetTitle,
                      style: customTextStyles.Titile1(
                          size.width * 0.8, Colors.white),
                    ),
                  ),
                )),
            AnimatedContainer(
              height: isExpanded ? widget.contentHeigh : 0,
              curve: Curves.easeInOutQuad,
              duration: const Duration(milliseconds: 500),
              child: AnimatedSlide(
                duration: const Duration(milliseconds: 500),
                offset: isExpanded ? const Offset(0, 0) : const Offset(0, 0.1),
                child: AnimatedOpacity(
                    duration: isExpanded
                        ? const Duration(seconds: 2)
                        : const Duration(milliseconds: 300),
                    opacity: isExpanded ? 1 : 0,
                    child: widget.child),
              ),
            )
          ],
        ),
      ),
    );
  }
}
