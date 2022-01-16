import 'package:bloc/bloc.dart';
import 'package:trionproj/logic/qr_bloc/main_qr_events.dart';
import 'package:trionproj/logic/qr_bloc/main_qr_repository.dart';
import 'package:trionproj/logic/qr_bloc/main_qr_states.dart';
import 'package:http/http.dart' as http;

class MainQrBloc extends Bloc<MainQrEvent, MainQrState> {
  MainQrBloc() : super(MainQrInitialState()) {
    on<SaveQrCode>((event, emit) async {
      try {
        emit(MainQrLoadingState());
        var loadedUrl = await MainQrRepository.saveNewQrCode(event.linkToCode);
        emit(QrSavedState(loadedUrl));
      } catch (e) {
        emit(QrErroredState(e as Error));
      }
    });

    on<DeleteQrCode>((event, emit) async {
      try {
        await MainQrRepository.DeleteQrCode(event.linkToCode);
        emit(QrDeletedState(event.linkToCode));
      } catch (e) {
        emit(QrErroredState(e as Error));
      }
    });

    on<LoadQrCodes>((event, emit) async {
      try {
        emit(MainQrLoadingState());
        List<String> loadedData = await MainQrRepository.loadQrCodes();
        emit(QrListLoadedState(loadedData));
      } catch (e) {
        emit(QrErroredState(e as Error));
      }
    });
  }
}
