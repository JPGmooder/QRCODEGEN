import 'package:flutter/material.dart';

class SingleQrCodeScreen extends StatelessWidget {
  const SingleQrCodeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var url = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      body: Container(
        child: Hero(
          tag: url,
          child: Image.network(url),
        ),
      ),
    );
  }
}
