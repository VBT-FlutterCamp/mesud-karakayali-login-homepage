import 'package:flutter/material.dart';
import 'package:vbt_sample_project/core/constants/colors/homepage_color.dart';

class BottomNavigation extends StatefulWidget {

  const BottomNavigation({ Key? key}) : super(key: key);

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
               
                });
              },
              icon: Icon(Icons.home,
                  size: addSizefromSmall(selectedIndex, 0),
                  color: _fillSelectColor(selectedIndex, 0))),
         
          IconButton(
              onPressed: () {
                setState(() {
                  selectedIndex = 1;
                  print("Ayarlar tıklandı");
            
                });
              },
              icon: Icon(Icons.settings,
                  size: addSizefromSmall(selectedIndex, 1),
                  color: _fillSelectColor(selectedIndex, 1))),


                   IconButton(
              onPressed: () {
                setState(() {
                  selectedIndex = 2;
                  print("Dosyalar tıklandı");
            
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


