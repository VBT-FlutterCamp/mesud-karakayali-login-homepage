import 'package:flutter/material.dart';
import 'package:vbt_sample_project/core/init/bottomNavigation/bottom_navgation.dart';
class HomePageView extends StatefulWidget {
  const HomePageView({ Key? key }) : super(key: key);
  static const routeName = '/homepage';
  @override
  _HomePageViewState createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        
        onPressed: (){},
        mini: true,
        child: Icon(Icons.add),),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: BottomNavigation(),
      body: Container(
        child: Text("HOMEPAGE"),
      ),
      
    );
  }
}