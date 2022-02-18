import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {

  const BottomNavigation({ Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int selectedIndex = 5;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 10,
      shape: CircularNotchedRectangle(),
      notchMargin: 5,
      color: Colors.blue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              onPressed: () {
                setState(() {
                  selectedIndex = 0;
                  print("1. index'e tıklandı");
               
                });
              },
              icon: Icon(Icons.home,
                  size: addSizefromSmall(selectedIndex, 0),
                  color: _fillSelectColor(selectedIndex, 0))),
          IconButton(
              onPressed: () {
                setState(() {
                  selectedIndex = 1;
                  print("2. index'e tıklandı");

              
                });
              },
              icon: Icon(Icons.book,
                  size: addSizefromSmall(selectedIndex, 1),
                  color: _fillSelectColor(selectedIndex, 1))),
          IconButton(
              onPressed: () {
                setState(() {
                  selectedIndex = 2;
                  print("3. index'e tıklandı");
            
                });
              },
              icon: Icon(Icons.access_alarm,
                  size: addSizefromSmall(selectedIndex, 2),
                  color: _fillSelectColor(selectedIndex, 2))),
          IconButton(
              onPressed: () {
                setState(() {
                  selectedIndex = 3;
                  print("4. index'e tıklandı");
                
                });
              },
              icon: Icon(Icons.note,
                  size: addSizefromSmall(selectedIndex, 3),
                  color: _fillSelectColor(selectedIndex, 3)))
        ],
      ),
    );
  }

  _fillSelectColor(int selectedIndex, int i) {
    return selectedIndex == i ? Colors.black : Colors.white;
  }

  addSizefromSmall(int selectedIndex, int i) {
    return selectedIndex == i ? 35.0 : 25.0;
  }
}
