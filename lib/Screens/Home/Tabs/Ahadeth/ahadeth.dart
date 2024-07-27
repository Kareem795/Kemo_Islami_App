import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app_kemo/Model/hadeth.dart';
import 'package:islami_app_kemo/Screens/Hadeth_Detils/hadeth_detils.dart';
import 'package:islami_app_kemo/Utils/app_assets.dart';
import 'package:islami_app_kemo/Utils/app_colors.dart';
import 'package:islami_app_kemo/Utils/app_style.dart';
import 'package:islami_app_kemo/Utils/contants.dart';

class Ahadeth_screen extends StatefulWidget 
{
  Ahadeth_screen({super.key});

  @override
  State<Ahadeth_screen> createState() => _Ahadeth_screenState();
}

class _Ahadeth_screenState extends State<Ahadeth_screen> 
{
  List<Hadeth> hadeth_list = [];

  @override
  void initState() 
  {
    super.initState();
    read_ahadeth_file();
  }

  @override
  Widget build(BuildContext context) 
  {
    return Column
    (
      crossAxisAlignment: CrossAxisAlignment.center,
      children: 
      [
        Expanded
        (
          flex: 30 ,
          child: Center
          (
            child: Image.asset(App_Assets.Ahdath_Tab_Log)
          )
        ),

        Expanded
        (
          flex: 70,
          child: Column
          (
            children: 
            [
              build_divider(),
          
              Text
              (
                "Hadiths" ,
                textAlign: TextAlign.center,
                style: App_Style.title,
              ),
          
              build_divider(),
          
              build_ahadeth_list(),
          
            ],
          ),
        )
      ],
    );
  }

  //-------------------Important-----------------//

  // Note: Study it is important

  Future read_ahadeth_file() async 
  {
    String ahadeth_file_contant = await rootBundle.loadString(Contants.hadeth_file_path);
    List<String> ahadeth_as_string = ahadeth_file_contant.split("#\r\n");
    for(int i = 0 ; i < ahadeth_as_string.length ; i++)
    {
      String hadeth = ahadeth_as_string[i];
      List<String> hadeth_lines = hadeth.split("\n");
      String hadeth_name = hadeth_lines[0];
      hadeth_lines.removeAt(0);
      String hadeth_contant = hadeth_lines.join();
      hadeth_list.add(Hadeth(title: hadeth_name.trim(), contant: hadeth_contant));
      
    }
    setState(() {});

  }

  //-------------------Important-----------------//

  Expanded build_ahadeth_list() => Expanded
  (
    flex: 70,
    child: hadeth_list.isEmpty ? CircularProgressIndicator(color: App_Colors.primary,) : ListView.builder
    (
      itemCount: hadeth_list.length, 
      itemBuilder: (context , index)
      {
        return InkWell // we use it to make name of ahadeth to be clickable
        (
          onTap: () 
          {
            Navigator.pushNamed
            (
              context, 
              hadeth_Details.route_name , 
              arguments: hadeth_list[index]
            );
          },
          
          child: Expanded  // اسماء الاحاديث
          (
            flex: 50,
            child: Text
            (
              hadeth_list[index].title,
              textAlign: TextAlign.center,
              style: App_Style.title,
            )
          ),
        );
      }
    ),
  );

  Divider build_divider() => Divider(color: App_Colors.primary, thickness: 3 , indent: 10, );
  
}