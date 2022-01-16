import 'package:bloc/bloc.dart';
import 'package:trionproj/logic/qr_code_creator_cubit/qr_code_creator_states.dart';
import 'package:trionproj/logic/qr_code_creator_cubit/qr_code_creqtor_provider.dart';
import 'package:trionproj/models/qr_code_model.dart';

class QrCodeCreatorCubit extends Cubit<QrCodeCreatorState> {
  QrCodeCreatorCubit() : super(QrCodeCreatorInitial());

  Future<void> generateQrCode(QrCodeConfigModel qrCodeModel) async {
    emit(QrCodeLoadingState());
    (await QrCodeCreatorProvider.getRawData(qrCodeModel.toJson()));
    emit(QrCodeCreatorCreated(qrCodeModel.logo.isEmpty
        ? "https://firebasestorage.googleapis.com/v0/b/trionproj.appspot.com/o/initial_logos%2Fic_twitter_rounded.jpg?alt=media&token=48c60004-e7ea-400e-b731-20d36ac3fcae"
        : qrCodeModel.logo));
  }
}
