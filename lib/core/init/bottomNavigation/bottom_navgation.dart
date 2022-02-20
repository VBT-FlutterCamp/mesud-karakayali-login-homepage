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
      color: Colors.green.withOpacity(0.8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              onPressed: () {
                setState(() {
                  selectedIndex = 0;
                  print("ayarlara  tıklandı");
               
                });
              },
              icon: Icon(Icons.settings,
                  size: addSizefromSmall(selectedIndex, 0),
                  color: _fillSelectColor(selectedIndex, 0))),
         
          IconButton(
              onPressed: () {
                setState(() {
                  selectedIndex = 1;
                  print("favorilere tıklandı");
            
                });
              },
              icon: Icon(Icons.favorite,
                  size: addSizefromSmall(selectedIndex, 1),
                  color: _fillSelectColor(selectedIndex, 1))),
          
        ],
      ),
    );
  }

  _fillSelectColor(int selectedIndex, int i) {
    return selectedIndex == i ? HomePageColor.homePageBG : Colors.white;
  }

  addSizefromSmall(int selectedIndex, int i) {
    return selectedIndex == i ? 35.0 : 25.0;
  }

 
}


