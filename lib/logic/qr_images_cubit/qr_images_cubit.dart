import 'package:bloc/bloc.dart';
import 'package:trionproj/logic/qr_images_cubit/qr_images_repository.dart';
import 'package:trionproj/logic/qr_images_cubit/qr_images_states.dart';

class QrImagesCubit extends Cubit<QrImageState> {
  QrImagesCubit() : super(QrImageInitialState());

  void LoadInitialListOfImages() async {
    try {
      var loadedImages = await QrImagesRepository.getInitialLogosDowloadLinks();
      emit(QrImagesLoadedState(loadedImages));
    } catch (e) {
      emit(QrImageErroredState());
    }
  }
}
