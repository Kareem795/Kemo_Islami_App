import 'package:flutter/material.dart';
import 'package:islami_app_kemo/Utils/app_assets.dart';
import 'package:islami_app_kemo/Utils/app_colors.dart';
import 'package:islami_app_kemo/Utils/app_style.dart';

class App_Scaffold extends StatelessWidget 
{

  final Widget? body;
  final String? appBar_title;
  final Widget? bottomNavigationBar;


  const App_Scaffold({super.key , this.body, this.appBar_title, this.bottomNavigationBar});

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

        body: body, 
        
        appBar: AppBar
        (
          title: Text
          (
            appBar_title??"",
            style: App_Style.AppBar_TextStyle,
          ),
          centerTitle: true,
          backgroundColor: App_Colors.transparent,
          elevation: 0, // to make the elevation not appearing
        ),

        bottomNavigationBar: bottomNavigationBar,

      )
    );
  }
}