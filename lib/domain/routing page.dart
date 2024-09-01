import 'package:flutter/cupertino.dart';
import 'package:sharedprefrencesapp2/ui/homepage1.dart';
import 'package:sharedprefrencesapp2/ui/loginpage.dart';
import 'package:sharedprefrencesapp2/ui/registrationpage.dart';
import 'package:sharedprefrencesapp2/ui/splashscreen.dart';

class AppRoutes {
  static final String SPLASH_PAGE_ROUTE = '/splash';
  static final String LOGIN_PAGE_ROUTE = '/login';
  static final String REGISTER_PAGE_ROUTE = '/register';
  static final String HOME_PAGE_ROUTE = '/home';

  //-------------------------------1st navigation------------------------------------
  static Map<String, Widget Function(BuildContext)> getRouteMap() => {
        SPLASH_PAGE_ROUTE: (context) => SplashScreen(),
        LOGIN_PAGE_ROUTE: (context) => LoginPage(),
        REGISTER_PAGE_ROUTE: (context) => RegistrationPage(),
        HOME_PAGE_ROUTE: (context) => HomePagee(),
      };
}
