part of "main_qr_bloc.dart";

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

  static Future<void> DeleteQrCode(String imagePath) async {
    var allQrs = await MainQrProvider.LoadQrCodes();
    for (var qr in allQrs.items) {
      var firebaseImagePath = await qr.getDownloadURL();
      if (imagePath == firebaseImagePath) {
        await qr.delete();
        break;
      }
    }
  }

  static Future<List<String>> loadQrCodes() async {
    bool isInitial = false;
    var rawData = await MainQrProvider.LoadQrCodes();
    List<String> urlList = [];
    for (var item in rawData.items) {
      var loadedurl = await item.getDownloadURL();
      urlList.add(loadedurl);
    }
    return urlList;
  }
}
