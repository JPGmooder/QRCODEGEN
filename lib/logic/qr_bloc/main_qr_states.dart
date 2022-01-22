part of "main_qr_bloc.dart";

@freezed
class MainQrState with _$MainQrState {
  const factory MainQrState.initial() = _MainQrInitialState;
  const factory MainQrState.loading() = MainQrLoadingState;
  const factory MainQrState.loaded({required List<String> downloadedUrls}) =
      _QrListLoadedState;
  const factory MainQrState.deleted({required String deletedUrl}) =
      _QrDeletedState;
  const factory MainQrState.errored({required Error error}) = _QrErroredState;
  const factory MainQrState.saved({required String downloadUrl}) =
      _QrSavedState;
}

// class MainQrInitialState extends MainQrState {}

// class MainQrLoadingState extends MainQrState {}

// class QrSavedState extends MainQrState {
//   String downloadUrl;
//   QrSavedState(this.downloadUrl);
// }

// class QrListLoadedState extends MainQrState {
//   List<String> downloadUrls;
//   QrListLoadedState(this.downloadUrls);
// }

// class QrDeletedState extends MainQrState {
//   String deletedUrl;
//   QrDeletedState(this.deletedUrl);
// }

// class QrErroredState extends MainQrState {
//   Error error;
//   QrErroredState(this.error);
// }
