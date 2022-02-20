import 'package:flutter/material.dart';
import 'package:vbt_sample_project/core/constants/colors/homepage_color.dart';
import 'package:vbt_sample_project/core/init/bottomNavigation/bottom_navgation.dart';

import 'homepage_view_body.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);
  static const routeName = '/homepage';

  @override
  _HomePageViewState createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      //FAB(Floating action ButTon)
      floatingActionButton: MyCenterFAB(),

      //bottomNavigation üstüne gelmesini sağlayan lokasyon kodu
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomNavigation(),

      body: HomePageViewBody(),
    );
  }
}

class MyCenterFAB extends StatefulWidget {
  const MyCenterFAB({
    Key? key,
  }) : super(key: key);

  @override
  State<MyCenterFAB> createState() => _MyCenterFABState();
}

class _MyCenterFABState extends State<MyCenterFAB> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: HomePageColor.homePageBG,
      onPressed: () {
        setState(() {});
        print("FAB'a tıklandı");
      },
      //mini küçük veya büyük yuvarlak olmasını sağlıyor
      mini: false,
      child: const Icon(
        Icons.file_copy,
      ),
    );
  }
}
