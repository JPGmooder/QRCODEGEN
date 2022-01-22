import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_provider/path_provider.dart';

import 'package:bloc/bloc.dart';
import 'package:http/http.dart' as http;

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

part 'main_qr_events.dart';
part 'main_qr_provider.dart';
part 'main_qr_repository.dart';
part 'main_qr_states.dart';

part 'main_qr_bloc.freezed.dart';

class MainQrBloc extends Bloc<MainQrEvent, MainQrState> {
  MainQrBloc() : super(MainQrState.initial()) {
    on<SaveQrCode>((event, emit) async {
      try {
        emit(MainQrLoadingState());
        var loadedUrl = await MainQrRepository.saveNewQrCode(event.linkToCode);
        emit(MainQrState.saved(downloadUrl: loadedUrl));
      } catch (e) {
        emit(MainQrState.errored(error: e as Error));
      }
    });

    on<DeleteQrCodes>((event, emit) async {
      try {
        await MainQrRepository.DeleteQrCode(event.linkToCode);
        emit(MainQrState.deleted(deletedUrl: event.linkToCode));
      } catch (e) {
        emit(MainQrState.errored(error: e as Error));
      }
    });

    on<LoadQrCodes>((event, emit) async {
      try {
        emit(MainQrState.loading());
        List<String> loadedData = await MainQrRepository.loadQrCodes();
        emit(MainQrState.loaded(downloadedUrls: loadedData));
      } catch (e) {
        emit(MainQrState.errored(error: e as Error));
      }
    });
  }
}
