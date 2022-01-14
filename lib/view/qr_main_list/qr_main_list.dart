import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class QrMainList extends StatelessWidget {
  QrMainList({Key? key}) : super(key: key);
  var user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.qr_code)),
            BottomNavigationBarItem(icon: Icon(Icons.manage_accounts))
          ],
        ),
        appBar: AppBar(
          title: Text(user!.email!),
        ),
        body: ListView());
  }
}
