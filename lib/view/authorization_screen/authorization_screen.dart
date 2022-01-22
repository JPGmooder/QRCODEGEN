import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';
import 'package:trionproj/consts/colors.dart';
import 'package:trionproj/consts/strings.dart';
import 'package:trionproj/logic/authorization_bloc/authorization_bloc.dart';

import 'package:trionproj/models/textstyles.dart';
import 'package:trionproj/view/standalone_widgets/connect_via_google_btn.dart';
import 'package:trionproj/view/standalone_widgets/onBoardingButton.dart';

class AuthorizationScreen extends StatefulWidget {
  AuthorizationScreen({Key? key}) : super(key: key);
  bool isSignUp = false;
  var formKey = GlobalKey<FormState>();

  String? emailValidator(String? text) {
    if (text == null) return "Email didnt provided";
    if (RegExp(r"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$")
        .hasMatch(text)) {
      return null;
    } else {
      return "Invalid email";
    }
  }

  String? passwordValidator(String? text) {
    if (text == null) return "Password didnt provided";

    if (RegExp(r"\s").allMatches(text).length > 0) {
      return "Spaces not allowed";
    }
    if (RegExp(r"[A-Z]").allMatches(text).length < 2) {
      return "The password must contain at least two uppercase latins";
    }
    if (RegExp(r"[a-z]").allMatches(text).length < 2) {
      return "The password must contain at least two downcase latins";
    }
    if (RegExp(r"[\d]").allMatches(text).length < 2) {
      return "The password must contain at least two digits";
    }
    if (RegExp(r"\W").allMatches(text).length < 1) {
      return "The password must contain at least one special symbol";
    }
    return null;
  }

  @override
  _AuthorizationScreenState createState() => _AuthorizationScreenState();
}

class _AuthorizationScreenState extends State<AuthorizationScreen>
    with SingleTickerProviderStateMixin {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late FocusNode emailFocus;
  late FocusNode retypePasswordFocus;
  late FocusNode passwordFocus;

  void goesToApp() {
    if (widget.formKey.currentState!.validate()) {
      widget.isSignUp
          ? context
              .read<AuthorizationBloc>()
              .signUpViaFirebase(emailController.text, passwordController.text)
          : context
              .read<AuthorizationBloc>()
              .signInViaFirebase(emailController.text, passwordController.text);
    }
  }

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    emailFocus = FocusNode();
    retypePasswordFocus = FocusNode();
    passwordFocus = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    emailFocus.dispose();
    retypePasswordFocus.dispose();
    passwordFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: LayoutBuilder(
      builder: (ctx, constraints) => SingleChildScrollView(
        child: Stack(children: [
          SafeArea(
              child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Form(
                key: widget.formKey,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: constraints.maxWidth * 0.15,
                      ),
                      Text(
                        widget.isSignUp
                            ? authorizationSignUpTitle
                            : authorizationSignInTitle,
                        style: customTextStyles.Titile1(
                            constraints.maxWidth, mainColor),
                      ),
                      SizedBox(
                        height: constraints.maxWidth * 0.03,
                      ),
                      Text(
                          widget.isSignUp
                              ? authorizationSignUpSubTitle
                              : authorizationSignInSubTitle,
                          style: customTextStyles.Titile1(
                              constraints.maxWidth * 0.6,
                              mainColor.withAlpha(150))),
                      SizedBox(
                        height: constraints.maxWidth * 0.15,
                      ),
                      TextFormField(
                        controller: emailController,
                        autofocus: true,
                        focusNode: emailFocus,
                        keyboardType: TextInputType.emailAddress,
                        onFieldSubmitted: (_) {
                          widget.formKey.currentState!.validate();
                          widget.isSignUp
                              ? passwordFocus.requestFocus()
                              : retypePasswordFocus.requestFocus();
                        },
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            label: Text(
                              authorizationEmail,
                            )),
                        validator: (text) => widget.emailValidator(text),
                      ),
                      SizedBox(
                        height: constraints.maxHeight * 0.04,
                      ),
                      PasswordField(
                        callback: widget.isSignUp ? null : goesToApp,
                        controller: passwordController,
                        validator:
                            widget.isSignUp ? widget.passwordValidator : null,
                        nextFocus: retypePasswordFocus,
                        focus: passwordFocus,
                      ),
                      if (widget.isSignUp)
                        SizedBox(
                          height: constraints.maxHeight * 0.04,
                        ),
                      if (widget.isSignUp)
                        TextFormField(
                          obscureText: true,
                          validator: (text) => text == passwordController.text
                              ? null
                              : "Password didnt match",
                          focusNode: retypePasswordFocus,
                          onFieldSubmitted: (_) => goesToApp(),
                          keyboardType: TextInputType.text,
                          decoration: const InputDecoration(
                              isDense: true,
                              prefixIcon: Icon(Icons.lock_clock_outlined),
                              label: Text(
                                authorizationRetype,
                              )),
                        ),
                      SizedBox(
                        height: widget.isSignUp
                            ? constraints.maxHeight * 0.1
                            : constraints.maxHeight * 0.2,
                      ),
                      Center(
                        child:
                            BlocConsumer<AuthorizationBloc, AuthorizationState>(
                          listener: (ctx, state) {
                            state.whenOrNull(
                                logedIn: (_) => Navigator.of(context)
                                    .pushReplacementNamed(QRMainList),
                                errored: (error) => showDialog(
                                    context: context,
                                    builder: (ctx) => AlertDialog(
                                        content: Text(error.toString()))));
                          },
                          builder: (context, state) {
                            return state.maybeWhen(
                                loading: () =>
                                    const CircularProgressIndicator.adaptive(),
                                orElse: () => onBoardingMainButton(
                                    onPress: goesToApp,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Stack(
                                        alignment: AlignmentDirectional.center,
                                        children: [
                                          Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Text(
                                              widget.isSignUp
                                                  ? authorizationSignUpButton
                                                  : authorizationSignInButton,
                                              style: TextStyle(),
                                            ),
                                          ),
                                          const Align(
                                            child: Icon(
                                                Icons.subdirectory_arrow_right),
                                            alignment: Alignment.centerRight,
                                          )
                                        ],
                                      ),
                                    )));
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              widget.isSignUp
                                  ? authorizationAlreadyHaveAccount
                                  : authorizationDontHaveAccount,
                              style: TextStyle(),
                            ),
                            SizedBox(
                              width: constraints.maxWidth * 0.02,
                            ),
                            GestureDetector(
                              onTap: () => setState(() {
                                widget.isSignUp = !widget.isSignUp;
                              }), //todo : тут меняем на сингап
                              child: Text(
                                  widget.isSignUp ? "Sign in" : "Sign up",
                                  style: TextStyle(color: mainColor)),
                            )
                          ],
                        ),
                      ),
                      Divider(),
                      ConnectViaGoogleButton(
                          onPress: () => context
                              .read<AuthorizationBloc>()
                              .signInViaGoogle(false)),
                    ]),
              ),
            ),
          ))
        ]),
      ),
    ));
  }
}

class PasswordField extends StatefulWidget {
  PasswordField({
    Key? key,
    this.callback,
    required this.controller,
    required this.focus,
    required this.nextFocus,
    this.validator,
  }) : super(key: key);
  FocusNode focus;
  FocusNode nextFocus;
  String? Function(String?)? validator;
  bool isUnVisiblePassword = true;
  void Function()? callback;
  TextEditingController controller;
  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: widget.validator,
      onEditingComplete: () =>
          widget.callback ?? widget.nextFocus.requestFocus(),
      focusNode: widget.focus,
      obscureText: widget.isUnVisiblePassword,
      decoration: InputDecoration(
          suffixIcon: GestureDetector(
            onTap: () => setState(() {
              widget.isUnVisiblePassword = !widget.isUnVisiblePassword;
            }),
            child: Icon(widget.isUnVisiblePassword
                ? Icons.remove_red_eye_outlined
                : Icons.remove_red_eye),
          ),
          prefixIcon: Icon(Icons.lock_outlined),
          label: const Text(
            authorizationPassword,
          )),
    );
  }
}
