abstract class MainQrEvent {}

class SaveQrCode extends MainQrEvent {
  String linkToCode;
  SaveQrCode(this.linkToCode);
}

class LoadQrCodes extends MainQrEvent {
}

class DeleteQrCode extends MainQrEvent {
  String linkToCode;
  DeleteQrCode(this.linkToCode);
}
