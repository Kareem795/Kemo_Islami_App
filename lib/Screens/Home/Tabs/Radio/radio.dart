import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app_kemo/Utils/app_assets.dart';
import 'package:islami_app_kemo/Utils/app_colors.dart';
import 'package:islami_app_kemo/Utils/app_style.dart';

class My_Radio_screen extends StatelessWidget 
{
  const My_Radio_screen({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return Center
    (
      child: Column
      (
        mainAxisAlignment: MainAxisAlignment.center,
        children: 
        [
          SizedBox(height: 75,),

          Padding
          (
            padding: const EdgeInsets.all(25.0),
            child: Container
            (
              width: double.infinity,
                // color: Color.fromRGBO(233, 186, 108, 1.0),

                alignment: Alignment.center,

                child: FittedBox(child: Image.asset(App_Assets.Radio_Tab_Log))
                //We use FittedBox to solve the small image problem to create the right size image for the application
            ),
          ),

          const SizedBox(height: 30),

          const Text
          (
           "اذان القران الكريم",
            style: App_Style.title,
          ),

          Expanded
          (
            flex: 20,
            child: Row
            (
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: 
              [
                // ImageIcon(color: App_Colors.primary,AssetImage(App_Assets.Radio_previous)),
                // ImageIcon(color: App_Colors.primary,AssetImage(App_Assets.Radio_play)),
                // ImageIcon(color: App_Colors.primary,AssetImage(App_Assets.Radio_next)),
            
                InkWell(onTap: () {}, child: Image.asset(App_Assets.Radio_previous)),
                InkWell(onTap: () {}, child: Image.asset(App_Assets.Radio_play)),
                InkWell(onTap: () {}, child: Image.asset(App_Assets.Radio_next))
              ],
            ),
          ),

          const SizedBox(height: 25),
          
        ]
      ),
    );
  }
}