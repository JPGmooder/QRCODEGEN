import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:trionproj/logic/qr_images_cubit/qr_images_cubit.dart';
import 'package:trionproj/logic/qr_images_cubit/qr_images_states.dart';

class AddLogoImageWidget extends StatefulWidget {
  AddLogoImageWidget({Key? key, required this.pathCallBack}) : super(key: key);
  void Function(String) pathCallBack;
  var imageList = [];
  @override
  _AddLogoImageWidgetState createState() => _AddLogoImageWidgetState();
}

class _AddLogoImageWidgetState extends State<AddLogoImageWidget> {
  Image? pickedImage;
  @override
  void initState() {
    context.read<QrImagesCubit>().LoadInitialListOfImages();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: pickedImage ??
                    Image.asset("lib/consts/assets/img/ic_nologo.jpg"),
                width: size.width * 0.3,
                height: size.width * 0.3,
              ),
              SizedBox(
                width: size.width * 0.1,
              ),
              Column(
                children: [
                  ElevatedButton(
                      onPressed: () async {
                        var image = await ImagePicker().pickImage(
                          source: ImageSource.gallery,
                        );
                        if (image != null) {
                          if ((await image.length()) < 2097152 &&
                              (image.path.endsWith('.png') ||
                                  image.path.endsWith(".jpg") ||
                                  image.path.endsWith(".svg") ||
                                  image.path.endsWith(".gif"))) {
                            setState(() {
                              widget.pathCallBack(image.path);
                              pickedImage = Image.file(File(image.path));
                            });
                          }
                        }
                      },
                      child: Text("Upload Image")),
                  if (pickedImage != null)
                    ElevatedButton(
                      onPressed: () => setState(() {
                        pickedImage = null;
                        widget.pathCallBack("");
                      }),
                      child: Text("Remove Logo"),
                      style: ElevatedButton.styleFrom(primary: Colors.red[200]),
                    )
                ],
              )
            ],
          ),
        ),
        SizedBox(
          width: size.width * 0.8,
          height: size.height * 0.1,
          child: BlocBuilder<QrImagesCubit, QrImageState>(
            builder: (context, state) {
              return state is QrImagesLoadedState
                  ? ListView(
                      scrollDirection: Axis.horizontal,
                      children: state.downloadList
                          .map((e) => GestureDetector(
                                onTap: () => setState(() {
                                  pickedImage = Image.network(e);
                                  widget.pathCallBack(e);
                                }),
                                child: Image.network(
                                  e,
                                  width: size.width * 0.2,
                                ),
                              ))
                          .toList(),
                    )
                  : CircularProgressIndicator.adaptive();
            },
          ),
        )
      ],
    );
  }
}
