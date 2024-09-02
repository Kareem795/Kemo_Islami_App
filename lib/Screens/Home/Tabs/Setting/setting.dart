import 'package:flutter/material.dart';
import 'package:islami_app_kemo/Utils/app_colors.dart';
import 'package:islami_app_kemo/Utils/app_style.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {

  String selected_language = "ar";
  bool is_dark_theme_enabled = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column
      (
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: 
        [
          Text("Language" , style: App_Style.title,),
          SizedBox(height: 18,),
          Build_Language_Menu(),
          SizedBox(height: 18,),
          Row(
            children: [
              Text("Theme" , style: App_Style.title,),
              Spacer(),
              Build_Theme_Switch(),
            ],
          ),
          
        
      
      
        ],
      ),
    );
  }

  Widget Build_Language_Menu() => DropdownButton
  (
    value: selected_language,
    items: 
    [
      DropdownMenuItem<String>(value: "ar" , child: Text("Arabic"),),
      DropdownMenuItem<String>(value: "en" , child: Text("English"),),
    ],

    isExpanded: true,

    onChanged:(New_Value) 
    {
      selected_language = New_Value??selected_language; 
      // we use ?? 
      //because there is option that the user can open the language list and do not chose a language
      //and this will make errror so we handeled it
      setState(() {});
    }
  );

  Widget Build_Theme_Switch() => Switch
  (
    value: is_dark_theme_enabled,

    activeColor: App_Colors.primary,
    
    onChanged: (New_Value)
    {
      is_dark_theme_enabled = New_Value;
      setState(() {});
    });
}