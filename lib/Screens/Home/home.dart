import 'package:flutter/material.dart';
import 'package:islami_app_kemo/Utils/app_assets.dart';
import 'package:islami_app_kemo/Utils/app_colors.dart';
import 'package:islami_app_kemo/Utils/app_style.dart';

class Home_screen extends StatelessWidget 
{
  static const String route_name = "home";
  const Home_screen({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return Container
    (
      decoration: const BoxDecoration
      (
        image: DecorationImage
        (
          image: AssetImage(App_Assets.background)
        )

      ),
      
      child: Scaffold
      (
        backgroundColor: Colors.transparent,
        
        appBar: build_Appbar(),

        bottomNavigationBar: Theme
        (
          data: ThemeData
          (
            canvasColor: App_Colors.primary
          ),

          child: BottomNavigationBar
          (
            items: 
            [
              BottomNavigationBarItem(icon: ImageIcon(AssetImage(App_Assets.icon_Quran)) , label: " "),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage(App_Assets.icon_Ahdath)) , label: " "),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage(App_Assets.icon_Radio)) , label: " "),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage(App_Assets.icon_Sebha)) , label: " ")
            ],
          ),

        ),
      
      
      ),
    );
  }


  AppBar build_Appbar() => AppBar
        (
          title: Text
          (
            "Islami" ,
            style: App_Style.AppBar_TextStyle,
          ),
          centerTitle: true,
          backgroundColor: App_Colors.transparent,
          elevation: 0, // to make the elevation not appearing
        );






}