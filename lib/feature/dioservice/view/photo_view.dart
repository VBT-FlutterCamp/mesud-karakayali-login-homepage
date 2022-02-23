import 'package:flutter/material.dart';

import 'photo_view_body.dart';
class PhotoView extends StatelessWidget {
  const PhotoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("PHOTO SERVICE WITH DIO"),),
      body: PhotoViewBody(),
    );
  }
}