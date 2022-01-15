import 'package:flutter/material.dart';
import 'package:trionproj/consts/colors.dart';
import 'package:trionproj/main.dart';
import 'package:trionproj/models/textstyles.dart';
import 'package:trionproj/view/qr_main_list/qr_code_add_entercontent_widget.dart';

class QrCodeAddBody extends StatelessWidget {
  QrCodeAddBody({Key? key}) : super(key: key);
  TextEditingController linkController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.7,
      height: MediaQuery.of(context).size.height * 0.5,
      child: ListView(
        children: [
          QrCodeAddWidget(
            child: QrCodeAddEnterContentWidget(
              controller: linkController,
            ),
            widgetIcon: Icons.link,
            widgetTitle: "ENTER CONTENT",
          ),
          QrCodeAddWidget(
            widgetTitle: "SET COLORS",
            widgetIcon: Icons.brush,
            child: Text("Aboba"),
          ),
          QrCodeAddWidget(
            widgetTitle: "ADD LOGO IMAGE",
            widgetIcon: Icons.image,
            child: Text("Aboba"),
          ),
          QrCodeAddWidget(
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
      required this.widgetIcon,
      required this.widgetTitle,
      required this.child})
      : super(key: key);
  IconData widgetIcon;
  String widgetTitle;
  Widget child;
  @override
  _QrCodeAddWidgetState createState() => _QrCodeAddWidgetState();
}

class _QrCodeAddWidgetState extends State<QrCodeAddWidget> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Card(
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
            height: isExpanded ? size.height * 0.3 : 0,
            curve: Curves.easeInOutQuad,
            duration: const Duration(milliseconds: 500),
            child: AnimatedSlide(
              duration: const Duration(milliseconds: 500),
              offset: isExpanded ? const Offset(0, 0) : const Offset(0, 0.1),
              child: AnimatedOpacity(
                  duration: const Duration(seconds: 1),
                  opacity: isExpanded ? 1 : 0,
                  child: widget.child),
            ),
          )
        ],
      ),
    );
  }
}
