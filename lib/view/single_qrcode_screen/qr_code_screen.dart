import 'package:flutter/material.dart';

class SingleQrCodeScreen extends StatelessWidget {
  const SingleQrCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Hero(
          tag: 1,
          child: Image.network(
              "https://pngimg.com/uploads/qr_code/qr_code_PNG6.png"),
        ),
      ),
    );
  }
}
