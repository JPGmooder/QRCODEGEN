

part of "main_qr_bloc.dart";


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
