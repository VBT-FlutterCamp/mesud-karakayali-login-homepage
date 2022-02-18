
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({ Key? key }) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
     
      shape:CircularNotchedRectangle(),
      notchMargin: 5,
      color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: 
        [
        IconButton(onPressed: (){}, icon: Icon(Icons.home,size: 25,color: Colors.white,)),
        IconButton(onPressed: (){}, icon: Icon(Icons.book,size: 25,)),
        IconButton(onPressed: (){}, icon: Icon(Icons.access_alarm,size: 25,)),
        IconButton(onPressed: (){}, icon: Icon(Icons.note,size: 25,))

        ],
      ),
    );

  }


  }
