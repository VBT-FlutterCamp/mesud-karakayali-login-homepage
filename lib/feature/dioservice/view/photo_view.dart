import 'package:flutter/material.dart';

import '../../../core/init/bottomNavigation/bottom_navgation.dart';
import 'photo_view_body.dart';
class PhotoView extends StatelessWidget {
  const PhotoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     bottomNavigationBar: BottomNavigation(index:2),
      appBar: AppBar(
        centerTitle: true,
        title: Text("PHOTO SERVICE WITH DIO"),),
      body: PhotoViewBody(),
    );
  }
}