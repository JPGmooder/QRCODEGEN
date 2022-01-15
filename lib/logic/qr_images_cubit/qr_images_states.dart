abstract class QrImageState {}

class QrImagesLoadedState extends QrImageState{
  List<String> downloadList;
  QrImagesLoadedState(this.downloadList);
}

class QrImageInitialState extends QrImageState
{
  
}

class QrImageErroredState extends QrImageState
{

}