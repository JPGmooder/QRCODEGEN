part of "qr_images_cubit.dart";

@freezed
class QrImageState with _$QrImageState {
  const factory QrImageState.loaded(List<String> downloadList) =
      _QrImagesLoadedState;
  const factory QrImageState.initial() = _QrImageInitialState;
  const factory QrImageState.errored() = _QrImageErroredState;
}

// class QrImagesLoadedState extends QrImageState {
//   List<String> downloadList;
//   QrImagesLoadedState(this.downloadList);
// }

// class QrImageInitialState extends QrImageState {}

// class QrImageErroredState extends QrImageState {}
