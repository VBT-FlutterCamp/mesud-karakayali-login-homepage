import 'package:flutter/material.dart';
import 'package:vbt_sample_project/core/constants/colors/homepage_color.dart';
import 'package:vbt_sample_project/core/init/bottomNavigation/bottom_navgation.dart';

import 'todos_view_body.dart';



class TodosPageView extends StatefulWidget {
  const TodosPageView({Key? key}) : super(key: key);
  static const routeName = '/homepage';

  @override
  _TodosPageViewState createState() => _TodosPageViewState();
}

class _TodosPageViewState extends State<TodosPageView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      //FAB(Floating action ButTon)
      //floatingActionButton: MyCenterFAB(),

      //bottomNavigation üstüne gelmesini sağlayan lokasyon kodu
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomNavigation(index:1),

      body: TodosPageViewBody(),
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
