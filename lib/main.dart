import 'package:flutter/material.dart';
import 'package:sharedprefrencesapp2/domain/routing%20page.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: SplashScreen(),
      initialRoute: AppRoutes.SPLASH_PAGE_ROUTE,
      routes: AppRoutes.getRouteMap(),
    );
  }
}
