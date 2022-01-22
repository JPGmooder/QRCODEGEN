import 'package:flutter/material.dart';
import 'package:trionproj/consts/colors.dart';
import 'package:trionproj/logic/qr_bloc/main_qr_bloc.dart';
import 'package:trionproj/models/textstyles.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QrCodeWidget extends StatelessWidget {
  QrCodeWidget({Key? key, required this.urlToImage}) : super(key: key);
  String urlToImage;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Card(
      child: Dismissible(
        onDismissed: (_) {
          context
              .read<MainQrBloc>()
              .add(MainQrEvent.delete(linkToCode: urlToImage));
        },
        key: ValueKey(urlToImage),
        direction: DismissDirection.endToStart,
        background: Container(
          color: Colors.red[300],
          alignment: const Alignment(0.9, 0),
          child: const Icon(
            Icons.delete_forever,
          ),
        ),
        child: ListTile(
            onTap: () {
              ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
              Navigator.of(context).pushNamed("qrtest", arguments: urlToImage);
            },
            leading: SizedBox(
              height: size.width * 0.2,
              width: size.width * 0.2,
              child: Hero(
                tag: urlToImage,
                child: Image.network(
                  urlToImage,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            title: Text(
              "Название QR кода",
              style: customTextStyles.Titile1(
                  size.width * 0.8, mainColor.withAlpha(150)),
            ),
            subtitle: Text(
              "Дата создания qr кода",
              style: customTextStyles.Titile1(
                  size.width * 0.6, mainColor.withAlpha(100)),
            ),
            trailing: Stack(
              children: [
                Icon(
                  Icons.arrow_back,
                  size: size.width * 0.08,
                ),
                Positioned(
                  child: Icon(
                    Icons.delete_forever,
                    color: Colors.red[200],
                    size: size.width * 0.04,
                  ),
                  right: 0,
                  top: 0,
                )
              ],
            )),
      ),
    );
  }
}
