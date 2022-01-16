abstract class MainQrState {}

class MainQrInitialState extends MainQrState {}

class MainQrLoadingState extends MainQrState {}

class QrSavedState extends MainQrState {
  String downloadUrl;
  QrSavedState(this.downloadUrl);
}

class QrListLoadedState extends MainQrState {
  List<String> downloadUrls;
  QrListLoadedState(this.downloadUrls);
}

class QrDeletedState extends MainQrState {
  String deletedUrl;
  QrDeletedState(this.deletedUrl);
}

class QrErroredState extends MainQrState {
  Error error;
  QrErroredState(this.error);
}
