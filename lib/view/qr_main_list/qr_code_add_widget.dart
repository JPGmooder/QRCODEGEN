import 'package:flutter/material.dart';
import 'package:trionproj/consts/colors.dart';
import 'package:trionproj/models/textstyles.dart';
import 'package:trionproj/view/qr_main_list/qr_code_add_entercontent_widget.dart';
import 'package:trionproj/view/qr_main_list/qr_code_add_logoimage_widget.dart';
import 'package:trionproj/view/qr_main_list/qr_code_add_setcolorscontent_widget.dart'
    as setcolor;
import 'package:trionproj/view/qr_main_list/qr_code_customizedesign_widget.dart';

class QrCodeAddBody extends StatefulWidget {
  QrCodeAddBody({Key? key}) : super(key: key);
  //* EnterContent

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

  Color secondColor = mainColor;

  Color firsteyeColor = mainColor;

  Color secondeyeColor = mainColor;

  Color backgroundColor = Colors.white;

  String pickedImage = "";

  void setPickedImage(String path) => this.pickedImage = path;

  String pickedEye = "";

  void setPickedEye(String path) => this.pickedEye = path;

  String pickedEyeBallShape = "";
  void setpickedEyeBallShape(String path) => this.pickedEyeBallShape = path;

  String pickedShape = "";
  void setpickedShape(String path) => this.pickedShape = path;

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

          //TODO: в сет калорсе не работает текстоввый ввод цвета. Починить.
          QrCodeAddWidget(
            contentHeigh: size.height * 0.4,
            widgetTitle: "SET COLORS",
            widgetIcon: Icons.brush,
            child: SingleChildScrollView(
                child: setcolor.SetColorContent(
                    gradientCallBack: setCurrentGradient,
                    isCustomEyeColorCallBack: setIsCustomEyeColor,
                    radioCallBack: setRadioCurrentValue,
                    backgroundColor: backgroundColor,
                    backgroundController: backgroundController,
                    firstColor: firstColor,
                    firstcolorController: firstcolorController,
                    firsteyeColor: firsteyeColor,
                    firsteyecolorController: firsteyecolorController,
                    secondColor: secondColor,
                    secondcolorController: secondcolorController,
                    secondeyeColor: secondeyeColor,
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
              onPressed: () {
                print(backgroundController.text.toString());
                print(firstcolorController.text.toString());
                print(currentGradient);
                print(firsteyecolorController.text.toString());
                print(isCustomEyeColor.toString());
                print(linkController.text.toString());
                print(pickedEye.toString());
                print(pickedEyeBallShape.toString());
                print(pickedImage.toString());
                print(pickedShape.toString());
                print(radioCurrentValue.toString());
                print(secondcolorController.text.toString());
                print(secondeyecolorController.toString());
              },
              child: Text("Lesss goooooo"))
        ],
      ),
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
