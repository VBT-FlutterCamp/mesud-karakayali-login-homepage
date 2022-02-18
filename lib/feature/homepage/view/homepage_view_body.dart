import 'package:flutter/material.dart';
class HomePageViewBody extends StatefulWidget {
  const HomePageViewBody({ Key? key }) : super(key: key);

  @override
  _HomePageViewBodyState createState() => _HomePageViewBodyState();
}

class _HomePageViewBodyState extends State<HomePageViewBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(child: Text("HOMEPAGE")),
      );
  }
}