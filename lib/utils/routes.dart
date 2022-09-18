import 'package:flutter/material.dart';
import 'package:pbf_app/view/home_screen.dart';
import 'package:pbf_app/view/login_screen.dart';
import 'package:pbf_app/view/onBoarding_screen.dart';
import 'package:pbf_app/view/signup_screen.dart';
import 'package:pbf_app/utils/routes_name.dart';

import '../view/login_screen_2.dart';


class Routes {
  static MaterialPageRoute generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.SignUp:
        return MaterialPageRoute(builder: (BuildContext context)=> const SignUpScreen());
      case RoutesName.SignIn:
        return MaterialPageRoute(builder: (BuildContext context)=> const LoginScreen());
         case RoutesName.SignIn2:
         return MaterialPageRoute(builder: (BuildContext context)=> const LogInScreen2());
       case RoutesName.onBording:
        return MaterialPageRoute(builder: (BuildContext context)=> const onBoardingScreen());
       case RoutesName.Home:
         return MaterialPageRoute(builder: (BuildContext context)=> const HomeScreen());
      // case RoutesName.Verb:
      //   return MaterialPageRoute(builder: (BuildContext context)=> const VerbsScreen());
      // case RoutesName.Worship:
      //   return MaterialPageRoute(builder: (BuildContext context)=> const WorshipScreen());
      // case RoutesName.Bodily:
      //   return MaterialPageRoute(builder: (BuildContext context)=> const BodilyScreen());
      // case RoutesName.Name:
      //   return MaterialPageRoute(builder: (BuildContext context)=> const NameScreen());
      // case RoutesName.Place:
      //   return MaterialPageRoute(builder: (BuildContext context)=> const PlaceScreen());
      // case RoutesName.Faith:
      //   return MaterialPageRoute(builder: (BuildContext context)=> const FaithScreen());

      default:
        return MaterialPageRoute(builder: (_){
           return const Scaffold(
           body:  Center(
              child: Text('No Route Defined'),
            ),
          );
        });
    }
  }
}
