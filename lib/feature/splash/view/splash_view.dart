import 'package:flutter/material.dart';
import 'package:vbt_sample_project/core/constants/image/splash_image_path.dart';


import '../../../core/constants/strings/splash_strings.dart';
import 'package:kartal/kartal.dart';
import '../../../core/init/navigation/navigation_route.dart';
import '../../onboard/view/onboard_view.dart';

class SplashScreen extends StatefulWidget {

  const SplashScreen({Key? key}) : super(key: key);

  static const routeName = '/splash_screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int isbig=0;
  @override
  void initState() {

    
    super.initState();
    bekletVeYonlendir();
  }
  void bekletVeYonlendir()async{


        await Future.delayed(Duration(seconds: 1),(){
      setState(() {
        isbig=1;
      });

       }).then((value)async {
         await Future.delayed(Duration(seconds:1),(){
      setState(() {
        isbig=2;
      });

       }).then((value)async{
         await Future.delayed(Duration(seconds:1),(){
      setState(() {
        isbig=3;
      });

       }).then((value)async{
         await Future.delayed(Duration(seconds:1),(){
      setState(() {
        isbig=4;
      });

       });
       });
       });
       });

    
 
    
    await Future.delayed(Duration(milliseconds: 500), () {
      Navigator.pushNamedAndRemoveUntil(
        
        context,
        OnBoardView.routeName,
        
        (Route<dynamic> route) => false,
      );
    });

    }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _buildSplashColumn(context),
    );
  }

  Widget _buildSplashColumn(BuildContext context) {
    return Center(
      child: AnimatedContainer(
       width: isbig==0?context.width * 0.5:isbig==1?context.width*0.7:isbig==2?context.width*0.6:isbig==3?context.width*0.9:context.width*0.8,
          height: isbig==0?context.height * 0.3:isbig==1?context.height*0.5:isbig==2?context.height*0.4:isbig==3?context.height*0.6:context.height*0.5,
       //color: Colors.white,
        curve: Curves.easeInBack,
        duration: Duration(seconds: 1),
        child: Image.asset(SplashImage.splashImage)
      ),
    );
  }
}



