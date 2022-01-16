import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;
import 'package:trionproj/logic/qr_bloc/main_qr_provider.dart';
import 'package:trionproj/logic/qr_code_creator_cubit/qr_code_creqtor_provider.dart';
import 'package:trionproj/view/qr_main_list/qr_main_list.dart';

class MainQrRepository {
  static Future<String> saveNewQrCode(String linkQrCode) async {
    bool isInitial = false;
    if (linkQrCode.startsWith("http")) {
      isInitial = true;
      var documentDirectory = await getApplicationDocumentsDirectory();
      var directory =
          await Directory(documentDirectory.path + "/fIREBASESimages").create();

      File fileToSet = File(directory.path + "/" + linkQrCode.split("/").last);
      await fileToSet
          .writeAsBytes((await http.get(Uri.parse(linkQrCode))).bodyBytes);
      linkQrCode = directory.path + "/" + linkQrCode.split("/").last;
    }
    var filePath =
        await MainQrProvider.loadNewImageToAStorage(File(linkQrCode));
    var dowloadUrl = FirebaseStorage.instance.ref(filePath).getDownloadURL();
    if (isInitial) {
      var documentDirectory = await getApplicationDocumentsDirectory();
      await Directory(documentDirectory.path + "/fIREBASESimages")
          .delete(recursive: true);
    }
    return dowloadUrl;
  }

  static Future<List<String>> loadQrCodes() async {
    bool isInitial = false;
    var rawData = await MainQrProvider.LoadQrCodes();
    List<String> urlList = [];
    for (var item in rawData.items) {
      urlList.add(await item.getDownloadURL());
    }
    return urlList;
  }
}
