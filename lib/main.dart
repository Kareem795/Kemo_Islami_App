import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami_app_kemo/Screens/Hadeth_Detils/hadeth_detils.dart';
import 'package:islami_app_kemo/Screens/Home/home.dart';
import 'package:islami_app_kemo/Screens/Splash/splash.dart';
import 'package:islami_app_kemo/Screens/Sura_Details/sura_details.dart';

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

      //----------------------------------------------------------------

      // Some addition to make our application support arabic and english

      localizationsDelegates: 
      [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],

      supportedLocales: 
      [
        Locale("ar"),
        Locale("en"),
      ],

      locale: Locale("ar"), 

  //----------------------------------------------------------------
  
      routes: 
      {
        Splash_screen.route_name:(_) => const Splash_screen(),
        Home_screen.route_name:(_) =>  Home_screen(),
        Sura_Details.route_name:(_) => Sura_Details(),
        hadeth_Details.route_name:(_) => hadeth_Details(),
      },
      initialRoute: Splash_screen.route_name
      
    );
  }
}

