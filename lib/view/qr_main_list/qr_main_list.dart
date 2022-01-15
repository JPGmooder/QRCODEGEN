import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:trionproj/consts/colors.dart';
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
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              isMaterialBannerOpened = !isMaterialBannerOpened;
              isMaterialBannerOpened
                  ? scaffoldMessenger.hideCurrentMaterialBanner()
                  : scaffoldMessenger.showMaterialBanner(
                      MaterialBanner(
                          content: QrCodeAddBody(), actions: [Container()]),
                    );
            },
            child: Icon(Icons.add)),
        backgroundColor: mainColor,
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: mainColor,
          selectedItemColor: Colors.white,
          currentIndex: 0,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.qr_code), label: "QR"),
            BottomNavigationBarItem(
                icon: Icon(Icons.manage_accounts), label: "Profile")
          ],
        ),
        appBar: AppBar(
          backgroundColor: mainColor,
          elevation: 0,
          centerTitle: true,
          title: Text("QR Codes!"),
        ),
        body: ListView(
          children: [
            QrCodeWidget(
              key: UniqueKey(),
            ),
          ],
        ));
  }
}
