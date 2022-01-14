import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:rxdart/rxdart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trionproj/consts/strings.dart';
import 'package:trionproj/logic/authorization_bloc/authorization_bloc.dart';
import 'package:trionproj/logic/internet_connection_cubit.dart';
import 'package:trionproj/logic/shared_preferences.dart';
import 'package:trionproj/view/authorization_screen/authorization_screen.dart';
import 'package:trionproj/view/onboarding_screen/onboarding.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  print ((await SharedPreferences.getInstance()).getKeys());

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late StreamSubscription connectListener;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (ctx) =>
            Internet_Connection_Cubit(Internet_Connection_State_Connected()),
        child: MaterialApp(
            title: 'Material App',
            home: BlocListener<Internet_Connection_Cubit,
                Internet_Connection_State>(
              listener: (context, state) =>
                  state is Internet_Connection_State_NotConnected
                      ? ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text("aboba")))
                      : null,
              child: OnBoardingScreen(),
            ),
            routes: {
              authorizationScreenRoute: (ctx) => BlocProvider(
                  create: (ctx) => AuthorizationBloc(),
                  child: setInternetListener(AuthorizationScreen()))
            }));
  }

  Widget setInternetListener(Widget child) {
    return BlocListener<Internet_Connection_Cubit, Internet_Connection_State>(
      listener: (context, state) =>
          state is Internet_Connection_State_NotConnected
              ? ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text("aboba")))
              : null,
      child: child,
    );
  }
}
