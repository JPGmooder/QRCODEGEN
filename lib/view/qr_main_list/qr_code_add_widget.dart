import 'package:flutter/material.dart';
import 'package:trionproj/consts/colors.dart';
import 'package:trionproj/main.dart';
import 'package:trionproj/models/textstyles.dart';
import 'package:trionproj/view/qr_main_list/qr_code_add_entercontent_widget.dart';
import 'package:trionproj/view/qr_main_list/qr_code_add_setcolorscontent_widget.dart';

class QrCodeAddBody extends StatelessWidget {
  QrCodeAddBody({Key? key}) : super(key: key);
  TextEditingController linkController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.7,
      height: size.height * 0.5,
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
          QrCodeAddWidget(
            contentHeigh: size.height * 0.4,
            widgetTitle: "SET COLORS",
            widgetIcon: Icons.brush,
            child: SingleChildScrollView(child: SetColorContent()),
          ),
          QrCodeAddWidget(
            contentHeigh: size.height * 0.2,
            widgetTitle: "ADD LOGO IMAGE",
            widgetIcon: Icons.image,
            child: Text("Aboba"),
          ),
          QrCodeAddWidget(
            contentHeigh: size.height * 0.2,
            widgetTitle: "CUSTOMIZE DESIGN",
            widgetIcon: Icons.qr_code_rounded,
            child: Text("Abreba"),
          ),
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
