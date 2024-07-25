import 'package:flutter/material.dart';
//import 'package:islami_app_kemo/Screens/Home/Tabs/Ahadeth/Radio/radio.dart';
import 'package:islami_app_kemo/Screens/Home/Tabs/Ahadeth/ahadeth.dart';
import 'package:islami_app_kemo/Screens/Home/Tabs/Quran/quran.dart';
import 'package:islami_app_kemo/Screens/Home/Tabs/Radio/radio.dart';
import 'package:islami_app_kemo/Screens/Home/Tabs/Sebha/sebha.dart';
import 'package:islami_app_kemo/Utils/app_assets.dart';
import 'package:islami_app_kemo/Utils/app_colors.dart';
import 'package:islami_app_kemo/Utils/app_style.dart';

class Home_screen extends StatefulWidget 
{
  static const String route_name = "home";
   Home_screen({super.key});

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> 
{
  int selcted_tab_index = 0;
  List<Widget> tabs = [Quran_screen() , Ahadeth_screen() , My_Radio_screen() , Sebha_screen()];

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

        bottomNavigationBar: Theme // we use theme here to solve navigation bar bug (solve the color problem)
        (
          data: ThemeData
          (
            canvasColor: App_Colors.primary
          ),

          child: build_BottomNavigationBar()

        ),

        body: tabs[selcted_tab_index], // to display the selected tab when the app starts

        // floatingActionButton: FloatingActionButton
        // (
        //   onPressed: () {}, // to add a function to handle the floating action button click
        // ),
        
      )
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

  BottomNavigationBar build_BottomNavigationBar() => BottomNavigationBar
  (
    selectedItemColor: App_Colors.accent,

    selectedIconTheme: IconThemeData(size: 36),
    
    //showUnselectedLabels: true, 
    // to make the unselected labels appear

    currentIndex: selcted_tab_index, 
    // to make the icons in the navigation bar selected by using the index (index from 0 to 3)

    onTap: (Index) // to change the index in the variable selcted_tab_index
    {
      selcted_tab_index = Index;
      setState(() {}); // to update the UI when the selected index changes
    },
    
    items: 
    [
      BottomNavigationBarItem(icon: ImageIcon(AssetImage(App_Assets.icon_Quran)) , label: "Moshaf"),
      BottomNavigationBarItem(icon: ImageIcon(AssetImage(App_Assets.icon_Ahdath)), label: "Ktab"),
      BottomNavigationBarItem(icon: ImageIcon(AssetImage(App_Assets.icon_Radio)) , label: "Radio"),
      BottomNavigationBarItem(icon: ImageIcon(AssetImage(App_Assets.icon_Sebha)) , label: "Sebha")
    ],
  );
}