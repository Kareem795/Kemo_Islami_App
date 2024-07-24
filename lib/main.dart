import 'package:flutter/material.dart';
import 'package:islami_app_kemo/Screens/Home/home.dart';
import 'package:islami_app_kemo/Screens/Splash/splash.dart';

void main() 
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget 
{
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp
    (
      routes: 
      {
        Splash_screen.route_name:(_) => const Splash_screen(),
        Home_screen.route_name:(_) => const Home_screen(),
      },
      initialRoute: Home_screen.route_name
    );
  }
}

