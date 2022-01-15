import 'package:firebase_storage/firebase_storage.dart';

class QrImagesProvider {
  static Future<ListResult> loadInitialImages() async =>
      await FirebaseStorage.instance.ref("/initial_logos").listAll();
}
