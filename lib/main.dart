import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trionproj/consts/strings.dart';
import 'package:trionproj/logic/authorization_bloc/authorization_bloc.dart';
import 'package:trionproj/logic/qr_bloc/main_qr_bloc.dart';
import 'package:trionproj/logic/qr_code_creator_cubit/qr_code_creator_cubit.dart';
import 'package:trionproj/logic/qr_images_cubit/qr_images_cubit.dart';
import 'package:trionproj/view/authorization_screen/authorization_screen.dart';
import 'package:trionproj/view/loading_screen.dart';
import 'package:trionproj/view/loading_screend2.dart';
import 'package:trionproj/view/onboarding_screen/onboarding.dart';
import 'package:trionproj/view/qr_main_list/qr_main_list.dart';
import 'package:trionproj/view/single_qrcode_screen/qr_code_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  var sharedprefs = await SharedPreferences.getInstance();
  sharedprefs.clear();
  var typeOfAuth = sharedprefs.getString(spKeyTypeOfAuth);
  Map<String, String>? usersCredentials;
  if (typeOfAuth == spAuthTypeFirebase) {
    usersCredentials = {
      spKeyOfUsersLogin: sharedprefs.getString(spKeyOfUsersLogin)!,
      spKeyOfUsersPassword: sharedprefs.getString(spKeyOfUsersPassword)!,
    };
  }

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(MyApp(
    typeOfAuth: typeOfAuth,
    usersCredentials: usersCredentials,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({required this.typeOfAuth, this.usersCredentials});
  final String? typeOfAuth;
  final Map<String, String>? usersCredentials;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (ctx) => AuthorizationBloc()),
        BlocProvider<QrImagesCubit>(create: (ctx) => QrImagesCubit()),
        BlocProvider<QrCodeCreatorCubit>(create: (ctx) => QrCodeCreatorCubit()),
        BlocProvider<MainQrBloc>(create: (ctx) => MainQrBloc())
      ],
      child: MaterialApp(
          title: 'Material App',
          home: Scaffold(
              body:
                  //     Stack(children: [
                  //   LoadingScreen(),
                  //   LoadingScreen2(),
                  // ])),
                  typeOfAuth == null
                      ? OnBoardingScreen()
                      : AuthRouter(
                          typeOfAuth: typeOfAuth,
                          usersCredentials: usersCredentials,
                        )),
          onGenerateRoute: (settings) {
            if (settings.name == QRMainList) {
              return PageRouteBuilder(
                  settings: settings,
                  pageBuilder: (_, __, ___) => QrMainList(),
                  transitionsBuilder: (_, a, __, c) =>
                      FadeTransition(opacity: a, child: c));
            } else if (settings.name == authorizationScreenRoute) {
              return PageRouteBuilder(
                  settings: settings,
                  pageBuilder: (ctx, __, ___) => BlocProvider.value(
                        value: BlocProvider.of<AuthorizationBloc>(ctx),
                        child: AuthorizationScreen(),
                      ),
                  transitionsBuilder: (_, a, __, c) =>
                      FadeTransition(opacity: a, child: c));
            }
          },
          routes: {"qrtest": (ctx) => SingleQrCodeScreen()}),
    );
  }

  // Widget setInternetListener(Widget child) {
  //   return BlocListener<Internet_Connection_Cubit, Internet_Connection_State>(
  //     listener: (context, state) =>
  //         state is Internet_Connection_State_NotConnected
  //             ? ScaffoldMessenger.of(context)
  //                 .showSnackBar(SnackBar(content: Text("aboba")))
  //             : null,
  //     child: child,
  //   );
  // }
}

class AuthRouter extends StatefulWidget {
  AuthRouter({required this.typeOfAuth, this.usersCredentials});

  final String? typeOfAuth;
  final Map<String, String>? usersCredentials;
  @override
  _AuthRouterState createState() => _AuthRouterState();
}

class _AuthRouterState extends State<AuthRouter> {
  late StreamSubscription streamSub;

  @override
  void initState() {
    var bloc = context.read<AuthorizationBloc>();

    streamSub = bloc.stream.listen((event) {
      event.whenOrNull(
          logedIn: (_) =>
              Navigator.of(context).pushReplacementNamed(QRMainList),
          errored: (_) => Navigator.of(context).pushReplacementNamed(
                authorizationScreenRoute,
              ));
    });

    widget.typeOfAuth == spAuthTypeGoogle
        ? bloc.signInViaGoogle(true)
        : bloc.signInViaFirebase(widget.usersCredentials![spKeyOfUsersLogin]!,
            widget.usersCredentials![spKeyOfUsersPassword]!);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        LoadingScreen(),
        LoadingScreen2(),
      ]),
    );
  }
}
