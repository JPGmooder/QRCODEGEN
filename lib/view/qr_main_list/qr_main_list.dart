import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trionproj/consts/colors.dart';
import 'package:trionproj/consts/strings.dart';
import 'package:trionproj/logic/qr_bloc/main_qr_bloc.dart';
import 'package:trionproj/logic/qr_bloc/main_qr_events.dart';
import 'package:trionproj/logic/qr_bloc/main_qr_states.dart';
import 'package:trionproj/logic/shared_preferences.dart';
import 'package:trionproj/view/qr_main_list/qr_code_add_widget.dart';
import 'package:trionproj/view/qr_main_list/qr_code_widget.dart';

class QrMainList extends StatelessWidget {
  QrMainList({Key? key}) : super(key: key);
  //var user = FirebaseAuth.instance.currentUser;
  bool isMaterialBannerOpened = false;
  @override
  Widget build(BuildContext context) {
    var scaffoldMessenger = ScaffoldMessenger.of(context);
    return Scaffold(
        floatingActionButton: Align(
          alignment: Alignment.bottomRight,
          child: FloatingActionButton(
              onPressed: () {
                isMaterialBannerOpened
                    ? scaffoldMessenger.hideCurrentMaterialBanner()
                    : scaffoldMessenger.showMaterialBanner(
                        MaterialBanner(
                            content: QrCodeAddBody(), actions: [Container()]),
                      );
                isMaterialBannerOpened = !isMaterialBannerOpened;
              },
              child: Icon(Icons.add)),
        ),
        backgroundColor: mainColor,
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () async {
                  var sp = await SharedPreferences.getInstance();
                  sp.clear();
                  Navigator.of(context)
                      .pushReplacementNamed(authorizationScreenRoute);
                },
                icon: Icon(
                  Icons.exit_to_app,
                ))
          ],
          backgroundColor: mainColor,
          elevation: 0,
          centerTitle: true,
          title: Text("QR Codes!"),
        ),
        body: MainListBody());
  }
}

class MainListBody extends StatefulWidget {
  const MainListBody({
    Key? key,
  }) : super(key: key);

  @override
  State<MainListBody> createState() => _MainListBodyState();
}

class _MainListBodyState extends State<MainListBody> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<MainQrBloc>().add(LoadQrCodes());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainQrBloc, MainQrState>(
      builder: (context, state) {
        if (state is QrListLoadedState) if (state.downloadUrls.length > 0)
          return ListView.builder(
              itemBuilder: (ctx, index) => QrCodeWidget(
                    urlToImage: state.downloadUrls[index],
                  ));
        else
          return Text("You have no QR Codes");
        else
          return Container();
      },
    );
  }
}
