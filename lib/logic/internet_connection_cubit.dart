import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity/connectivity.dart';

class Internet_Connection_Cubit extends Cubit<Internet_Connection_State> {
  Internet_Connection_Cubit(Internet_Connection_State InternetConnection)
      : super(InternetConnection) {
    Future.delayed(Duration(seconds: 3)).then((value) =>
        InternetConnection is Internet_Connection_State_NotConnected
            ? lostConnection()
            : null);
    Connectivity().onConnectivityChanged.listen((event) =>
        event == ConnectivityResult.none ? lostConnection() : getConnection());
  }
  @override
  void onChange(Change<Internet_Connection_State> change) {
    super.onChange(change);
    if (change.currentState is Internet_Connection_State_NotConnected &&
        change.nextState is Internet_Connection_State_Connected)
      emit(Internet_Connection_State_REConnected());
  }

  void lostConnection() => emit(Internet_Connection_State_NotConnected());
  void reconnected() {
    emit(Internet_Connection_State_REConnected());
    emit(Internet_Connection_State_Connected());
  }

  void getConnection() => emit(Internet_Connection_State_Connected());
}

abstract class Internet_Connection_State {}

class Internet_Connection_State_Initial implements Internet_Connection_State {}

class Internet_Connection_State_REConnected
    implements Internet_Connection_State {}

class Internet_Connection_State_Connected implements Internet_Connection_State {
}

class Internet_Connection_State_NotConnected
    implements Internet_Connection_State {}
