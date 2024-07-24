import 'package:flutter/material.dart';
import 'package:islami_app_kemo/Screens/Home/home.dart';
import 'package:islami_app_kemo/Utils/app_assets.dart';

class Splash_screen extends StatefulWidget 
{
  static const String route_name = "splash";
  const Splash_screen({super.key});

  @override
  State<Splash_screen> createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> 
{
  @override
  void initState() 
  {
    super.initState(); // make the splash screen create only once

    Future.delayed // make the splash screen visible about 3 seconds and then change to the home screen
    (
      Duration(seconds: 3) , () 
      {
        Navigator.pushReplacementNamed(context, Home_screen.route_name);
      },
    );
  }

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      body: Image.asset(App_Assets.splash),
    );
  }
}