import 'package:bloc/bloc.dart';
import 'package:trionproj/logic/qr_code_creator_cubit/qr_code_creator_states.dart';
import 'package:trionproj/logic/qr_code_creator_cubit/qr_code_creqtor_provider.dart';
import 'package:trionproj/models/qr_code_model.dart';

class QrCodeCreatorCubit extends Cubit<QrCodeCreatorState> {
  QrCodeCreatorCubit() : super(QrCodeCreatorInitial());

  Future<void> generateQrCode(QrCodeConfigModel qrCodeModel) async {
    emit(QrCodeLoadingState());
    (await QrCodeCreatorProvider.getRawData(qrCodeModel.toJson()));
    emit(QrCodeCreatorCreated(
        "https://cdn.zephyrcms.com/2b5fcc68-f3d1-4c94-8e58-2fd5ee03a75c/-/progressive/yes/qr-code-contact-us"));
  }
}
