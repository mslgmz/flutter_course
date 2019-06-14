import 'dart:ui';

import 'package:flutter/material.dart';
/*import 'package:flutter/rendering.dart';*/

import './pages/auth.dart';

/*void main() => runApp(MyApp());*/

void main(){
  /*debugPaintSizeEnabled = true;
  debugPaintBaselinesEnabled =  true;
  debugPaintPointersEnabled = true;*/
  runApp(MyApp());
}  


class MyApp extends StatelessWidget{
  
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      /*debugShowMaterialGrid: true,*/
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.deepOrangeAccent,
        accentColor: Colors.deepPurple
      ),
      home: AuthPage(),
    );
  }
}
