import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trionproj/consts/colors.dart';
import 'package:trionproj/consts/strings.dart';
import 'package:trionproj/logic/qr_bloc/main_qr_bloc.dart';

import 'package:trionproj/models/textstyles.dart';
import 'package:trionproj/view/qr_main_list/qr_code_add_widget.dart';
import 'package:trionproj/view/qr_main_list/qr_code_widget.dart';

class QrMainList extends StatelessWidget {
  QrMainList({Key? key}) : super(key: key);
  //var user = FirebaseAuth.instance.currentUser;
  bool isMaterialBannerOpened = false;
  @override
  Widget build(BuildContext context) {
    var scaffoldMessenger = ScaffoldMessenger.of(context);
    return Scaffold(
        floatingActionButton: Align(
          alignment: Alignment.bottomRight,
          child: FloatingActionButton(
              onPressed: () {
                isMaterialBannerOpened
                    ? scaffoldMessenger.hideCurrentMaterialBanner()
                    : scaffoldMessenger.showMaterialBanner(
                        MaterialBanner(
                            content: QrCodeAddBody(), actions: [Container()]),
                      );
                isMaterialBannerOpened = !isMaterialBannerOpened;
              },
              child: Icon(Icons.ad_units)),
        ),
        backgroundColor: mainColor,
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () async {
                  var sp = await SharedPreferences.getInstance();
                  sp.clear();
                  Navigator.of(context)
                      .pushReplacementNamed(authorizationScreenRoute);
                },
                icon: Icon(
                  Icons.exit_to_app,
                ))
          ],
          backgroundColor: mainColor,
          elevation: 0,
          centerTitle: true,
          title: Text("QR Codes!"),
        ),
        body: MainListBody());
  }
}

class MainListBody extends StatefulWidget {
  MainListBody({
    Key? key,
  }) : super(key: key);
  List<String> qrCodes = [];
  @override
  State<MainListBody> createState() => _MainListBodyState();
}

class _MainListBodyState extends State<MainListBody> {
  late StreamSubscription sub;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<MainQrBloc>().add(LoadQrCodes());

    sub = BlocProvider.of<MainQrBloc>(context)
        .stream
        .listen((state) => state.whenOrNull(
            loaded: (urlList) => setState(() {
                  widget.qrCodes = urlList;
                }),
            deleted: (url) => setState(() {
                  widget.qrCodes.remove(url);
                }),
            saved: (url) => setState(() {
                  widget.qrCodes.add(url);
                })));
  }

  @override
  void dispose() {
    sub.cancel();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.qrCodes.isEmpty
        ? Center(
            child: Text("No QR Codes found :(",
                style: customTextStyles.Titile1(
                  MediaQuery.of(context).size.width,
                  mainColor.withAlpha(250),
                )))
        : ListView.builder(
            itemCount: widget.qrCodes.length,
            itemBuilder: (ctx, index) =>
                QrCodeWidget(urlToImage: widget.qrCodes[index]));
  }
}
