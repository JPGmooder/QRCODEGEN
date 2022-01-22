import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trionproj/models/qr_code_model.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';
part 'qr_code_creator_states.dart';
part 'qr_code_creator_repository.dart';
part 'qr_code_creator_provider.dart';
part 'qr_code_creator_cubit.freezed.dart';

class QrCodeCreatorCubit extends Cubit<QrCodeCreatorState> {
  QrCodeCreatorCubit() : super(QrCodeCreatorState.initial());

  Future<void> generateQrCode(QrCodeConfigModel qrCodeModel) async {
    emit(QrCodeCreatorState.loading());
    (await QrCodeCreatorProvider.getRawData(qrCodeModel.toJson()));
    emit(QrCodeCreatorState.created(
        imagePath: qrCodeModel.logo.isEmpty
            ? "https://firebasestorage.googleapis.com/v0/b/trionproj.appspot.com/o/initial_logos%2Fic_twitter_rounded.jpg?alt=media&token=48c60004-e7ea-400e-b731-20d36ac3fcae"
            : qrCodeModel.logo));
  }
}
