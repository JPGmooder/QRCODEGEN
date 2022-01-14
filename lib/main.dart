import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trionproj/consts/strings.dart';
import 'package:trionproj/logic/authorization_bloc/authorization_bloc.dart';
import 'package:trionproj/logic/authorization_bloc/authorization_states.dart';
import 'package:trionproj/logic/internet_connection_cubit.dart';
import 'package:trionproj/view/authorization_screen/authorization_screen.dart';
import 'package:trionproj/view/onboarding_screen/onboarding.dart';
import 'package:trionproj/view/qr_main_list/qr_main_list.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  var sharedprefs = await SharedPreferences.getInstance();

  var typeOfAuth = sharedprefs.getString(spKeyTypeOfAuth);
  print(typeOfAuth);
  Map<String, String>? usersCredentials;
  if (typeOfAuth == spAuthTypeFirebase) {
    usersCredentials = {
      spKeyOfUsersLogin: sharedprefs.getString(spKeyOfUsersLogin)!,
      spKeyOfUsersPassword: sharedprefs.getString(spKeyOfUsersPassword)!,
    };
  }
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
    return BlocProvider(
        create: (ctx) => AuthorizationBloc(),
        child: MaterialApp(
            title: 'Material App',
            home: typeOfAuth == null
                ? OnBoardingScreen()
                : AuthRouter(
                    typeOfAuth: typeOfAuth,
                    usersCredentials: usersCredentials,
                  ),
            routes: {
              authorizationScreenRoute: (ctx) => BlocProvider.value(
                    value: BlocProvider.of<AuthorizationBloc>(ctx),
                    child: AuthorizationScreen(),
                  ),
              QRMainList: (ctx) => QrMainList()
            }));
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
      if (event is AuthorizationLogedIn) {
        Navigator.of(context).pushReplacementNamed(QRMainList);
      } else if (event is AuthorizationErrored) {
        Navigator.of(context).pushReplacementNamed(authorizationScreenRoute);
      }
    });

    widget.typeOfAuth == spAuthTypeGoogle
        ? bloc.signInViaGoogle(true)
        : bloc.signInViaFirebase(widget.usersCredentials![spKeyOfUsersLogin]!,
            widget.usersCredentials![spKeyOfUsersPassword]!);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
