import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app_kemo/Utils/app_assets.dart';
import 'package:islami_app_kemo/Utils/app_colors.dart';


class Sebha_screen extends StatefulWidget 
{
  static const route_named = "Sebha";

  @override
  State<Sebha_screen> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha_screen> 
{
  int counter = 0;
  List<String> buttonChange = ["سبحان الله", "الله اكبر", "الحمد لله"];
  String text = "سبحان الله"; // Initial text
  double spin = 0.0;

  void add() // to update the counter and spin the Sebha body
  {
    setState(() 
    {
      spin += 0.05;
      counter++;
      updateText();
    });
  }

  void updateText() // to updata the text botton
  {
    setState(() {
      int index = (counter ~/ 33) % buttonChange.length;
      text = buttonChange[index];
    });
  }

  @override
  Widget build(BuildContext context) 
  {
    return Expanded
    (
      child: Center
      (
        child: Column
        (
          mainAxisAlignment: MainAxisAlignment.center,
          children: 
          [
            Expanded
            (
              flex: 60,
              child: Stack
              (
                children:
                [
                  Container
                  (
                    margin: EdgeInsets.only(left: 50 , top: 8),
                    alignment: Alignment.topCenter,
                    child: Image.asset(App_Assets.Sebha_head)
                  ),

                  Container
                  (
                    margin: EdgeInsets.only(top: 50),
                    alignment: Alignment.center,
                    child: AnimatedRotation // we use AnimatedRotation to make Sebha body spin 
                    (
                      turns: spin, // Control the rotation speed
                      duration: const Duration(seconds: 1),
                      child: Image.asset(App_Assets.Sebha_body),
                    ),

                  ),

                ]
              ),
            ),

            Container
            (
              child:const Text
              (
                "عدد التسبيحات",
                style: TextStyle
                (
                  fontSize: 28,
                  fontWeight: FontWeight.w700
                ),
              )
            ),

            SizedBox(height: 40),

            Expanded
            (
              flex: 30,
              child: Column
              (
                children: 
                [
                  Container
                  (
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration
                    (
                      color: App_Colors.primary,
                      borderRadius: BorderRadius.circular(20.0)
                    ),

                    child: Text
                    (
                      "$counter",
                      style: TextStyle(fontSize: 24),
                    ),

                  ),

                  SizedBox(height: 20),

                  ElevatedButton
                  (
                    onPressed: add,

                    style: ElevatedButton.styleFrom
                    (
                      backgroundColor: App_Colors.primary,

                      shape:RoundedRectangleBorder
                      (
                        borderRadius: BorderRadius.circular(30.0),
                      )

                    ),

                    child: Text
                    (
                      text, 
                      style: TextStyle
                      (
                        color: App_Colors.white,
                        fontSize: 24
                      ),

                    ),

                  ),

                ],
              )
            )
          ],
        ),
      ),
    );
  }
}