part of "main_qr_bloc.dart";
@freezed
class MainQrEvent with _$MainQrEvent {
  const factory MainQrEvent.save({required String linkToCode}) = SaveQrCode;
  const factory MainQrEvent.load() = LoadQrCodes;
  const factory MainQrEvent.delete({required String linkToCode}) =
      DeleteQrCodes;
}

// class SaveQrCode extends MainQrEvent {
//   String linkToCode;
//   SaveQrCode(this.linkToCode);
// }

// class LoadQrCodes extends MainQrEvent {
// }

// class DeleteQrCode extends MainQrEvent {
//   String linkToCode;
//   DeleteQrCode(this.linkToCode);
// }
