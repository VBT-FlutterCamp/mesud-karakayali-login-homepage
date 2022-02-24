import 'package:flutter/material.dart';
import 'package:vbt_sample_project/core/constants/colors/homepage_color.dart';
import 'package:vbt_sample_project/feature/bottomhttp/view/todos_view.dart';

import '../../../feature/dioservice/view/photo_view.dart';
import '../../../feature/homepage/view/homepage_view.dart';

class BottomNavigation extends StatefulWidget {
  final int index;
  const BottomNavigation({
    required  this.index,
     Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int selectedIndex=5;


  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 10,
      shape: CircularNotchedRectangle(),
      notchMargin: 5,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              onPressed: () {
                setState(() {
                  selectedIndex = 0;
                  print("Anasayfa  tıklandı");
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePageView(),));
                });
              },
              icon: Icon(Icons.home,
                  size: addSizefromSmall(selectedIndex, 0),
                  color: _fillSelectColor(selectedIndex, 0))),
         
          IconButton(
              onPressed: () {
                setState(() {
                  selectedIndex = 1;
                 Navigator.push(context, MaterialPageRoute(builder: (_)=>TodosPageView()));
                 print("http sayfasına tıklandı");
            
                });
              },
              icon: Icon(Icons.http,
                  size: addSizefromSmall(selectedIndex, 1),
                  color: _fillSelectColor(selectedIndex, 1))),


                   IconButton(
              onPressed: () {
                setState(() {
                  selectedIndex = 2;
                   Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => PhotoView(),), (route) => false);
            
                });
              },
              icon: Icon(Icons.file_copy,
                  size: addSizefromSmall(selectedIndex, 2),
                  color: _fillSelectColor(selectedIndex, 2))),
          
        ],
      ),
    );
  }

  _fillSelectColor(int selectedIndex, int i) {
    return selectedIndex == i ? Colors.blueGrey : HomePageColor.homePageBG;
  }

  addSizefromSmall(int selectedIndex, int i) {
    return selectedIndex == i ? 35.0 : 25.0;
  }

 
}


