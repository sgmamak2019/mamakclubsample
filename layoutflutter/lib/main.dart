import 'package:flutter/material.dart';
//import 'package:layoutflutter/layout.dart';
import 'package:layoutflutter/gridview.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:"Layouts Flutter",
      //home:new FlutterLayout()-jake's layout sample
      // home:new ContainerLayout() - jake's container sample
        home:new GridLayout()
    );
  }
}