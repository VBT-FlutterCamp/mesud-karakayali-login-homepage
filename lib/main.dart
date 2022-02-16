import 'package:flutter/material.dart';
import 'package:vbt_sample_project/feature/login/view/login_view.dart';

import 'core/init/navigation/navigation_route.dart';
import 'core/init/navigation/navigation_service.dart';

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
      home: const SplashScreen(),
      routes: {
       
        OnBoardView.routeName: (context) => const OnBoardView(),
        SplashScreen.routeName: (context) => const SplashScreen(),
        LoginViewPage.routeName:(context) =>const LoginViewPage(),
        
      },
    );
  }
}
