import 'package:firebase_storage/firebase_storage.dart';
import 'package:trionproj/consts/strings.dart';

class FirebaseStorageLib {
  static Future<void> regOrSkipExistedUser(String uid) async {
    var storageInstance = FirebaseStorage.instance;
    var newUserRef =
        storageInstance.ref(firebaseStorageUserCollection + '/' + uid);
    print(newUserRef.name);
  }
}
