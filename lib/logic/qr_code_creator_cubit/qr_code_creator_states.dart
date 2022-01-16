abstract class QrCodeCreatorState {}

class QrCodeCreatorInitial extends QrCodeCreatorState {}

class QrCodeCreatorCreated extends QrCodeCreatorState {
  String imagePath;
  QrCodeCreatorCreated(this.imagePath);
}

class QrCodeLoadingState extends QrCodeCreatorState {

}



class QrCodeCreatorErrored extends QrCodeCreatorState {}
