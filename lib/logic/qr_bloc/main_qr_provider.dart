import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:trionproj/logic/qr_bloc/main_qr_events.dart';

class MainQrProvider {
  static Future<String> loadNewImageToAStorage(File fileToAdd) async {
    var fileName =
        "Users/${FirebaseAuth.instance.currentUser!.uid}/${fileToAdd.path.split('/').last}";
    await FirebaseStorage.instance
        .ref("Users/${FirebaseAuth.instance.currentUser!.uid}");
    await FirebaseStorage.instance.ref(fileName).putFile(fileToAdd);
    return fileName;
  }


  static Future<ListResult> LoadQrCodes() async =>
      await FirebaseStorage.instance
          .ref("Users/${FirebaseAuth.instance.currentUser!.uid}")
          .listAll();
}
