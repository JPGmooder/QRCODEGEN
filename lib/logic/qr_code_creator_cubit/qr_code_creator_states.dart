part of "qr_code_creator_cubit.dart";

@freezed
class QrCodeCreatorState with _$QrCodeCreatorState {
  const factory QrCodeCreatorState.initial() = _QrCodeCreatorInitial;
  const factory QrCodeCreatorState.created({required String imagePath}) =
      _QrCodeCreatorCreated;
  const factory QrCodeCreatorState.loading() = _QrCodeCreatorLoading;
  const factory QrCodeCreatorState.errored() = _QrCodeCreatorErrored;
}



// class QrCodeCreatorInitial extends QrCodeCreatorState {}

// class QrCodeCreatorCreated extends QrCodeCreatorState {
//   String imagePath;
//   QrCodeCreatorCreated(this.imagePath);
// }

// class QrCodeLoadingState extends QrCodeCreatorState {

// }



// class QrCodeCreatorErrored extends QrCodeCreatorState {}
