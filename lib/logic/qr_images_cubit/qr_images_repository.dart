import 'dart:async';
import 'dart:ffi';

import 'package:trionproj/logic/qr_images_cubit/qr_images_provider.dart';

class QrImagesRepository {
  static Future<List<String>> getInitialLogosDowloadLinks() async {
    var providedImages = await QrImagesProvider.loadInitialImages();
    var listToReturn = <String>[];

    for (var image in providedImages.items) {
      String url = await image.getDownloadURL();
      listToReturn.add(url);
    }
    return listToReturn;
  }
}
