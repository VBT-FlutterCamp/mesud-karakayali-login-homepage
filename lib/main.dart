import 'package:flutter/material.dart';
import 'package:vbt_sample_project/feature/homepage/view/homepage_view.dart';
import 'package:vbt_sample_project/feature/login/view/login_view.dart';

import 'core/init/navigation/navigation_route.dart';
import 'core/init/navigation/navigation_service.dart';

import 'feature/dioservice/view/photo_view.dart';
import 'feature/httpservice/view/user_view.dart';
import 'feature/httpservice/view/user_view_body.dart';
import 'feature/onboard/view/onboard_view.dart';
import 'feature/splash/view/splash_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const routeName = '/';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: NavigationService.navigatorKey,
      onGenerateRoute: NavigationRoute.generateRoute,
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: const HomePageView(),
      routes: {
       
        OnBoardView.routeName: (context) => const OnBoardView(),
        SplashScreen.routeName: (context) => const SplashScreen(),
        LoginView.routeName:(context) =>const LoginView(),
        HomePageView.routeName:(context)=>const HomePageView(),
        
      },
    );
  }
}
