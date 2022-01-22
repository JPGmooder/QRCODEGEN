part of "qr_images_cubit.dart";

class QrImagesProvider {
  static Future<ListResult> loadInitialImages() async =>
      await FirebaseStorage.instance.ref("/initial_logos").listAll();
}
