import 'package:flutter/material.dart';
import 'package:islami_app_kemo/Screens/Home/Tabs/Ahadeth/ahadeth.dart';
import 'package:islami_app_kemo/Screens/Home/Tabs/Quran/quran.dart';
import 'package:islami_app_kemo/Screens/Home/Tabs/Radio/radio.dart';
import 'package:islami_app_kemo/Screens/Home/Tabs/Sebha/sebha.dart';
import 'package:islami_app_kemo/Utils/app_assets.dart';
import 'package:islami_app_kemo/Utils/app_colors.dart';
import 'package:islami_app_kemo/Wedgits/app_scaffold.dart';

class Home_screen extends StatefulWidget 
{
  static const String route_name = "home";
   Home_screen({super.key});

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> 
{
  int selcted_tab_index = 0; // variable to store the index of the selected tab
  List<Widget> tabs = [Quran_screen() , Ahadeth_screen() , My_Radio_screen() , Sebha_screen()];

  @override
  Widget build(BuildContext context) 
  {
    return App_Scaffold
    (
      appBar_title: "Islami",

      body: tabs[selcted_tab_index],

      bottomNavigationBar: Theme // we use theme here to solve navigation bar bug (solve the color problem)
      (
        data: ThemeData
        (
          canvasColor: App_Colors.primary
        ),

        child: BottomNavigationBar
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
            BottomNavigationBarItem(icon: ImageIcon(AssetImage(App_Assets.icon_Ahdath)), label: "Hadiths"),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage(App_Assets.icon_Radio)) , label: "Radio"),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage(App_Assets.icon_Sebha)) , label: "Tasbih")
          ],
        )

      ),
    
    );

  }

}