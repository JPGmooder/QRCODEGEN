import 'package:bloc/bloc.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'qr_images_provider.dart';
part 'qr_images_repository.dart';
part 'qr_images_states.dart';
part 'qr_images_cubit.freezed.dart';

class QrImagesCubit extends Cubit<QrImageState> {
  QrImagesCubit() : super(QrImageState.initial());

  void LoadInitialListOfImages() async {
    try {
      var loadedImages = await QrImagesRepository.getInitialLogosDowloadLinks();
      emit(QrImageState.loaded(loadedImages));
    } catch (e) {
      emit(QrImageState.errored());
    }
  }
}
