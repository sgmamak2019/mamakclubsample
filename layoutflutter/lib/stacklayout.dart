import 'package:flutter/material.dart';


class StackLayoutState extends State<StackLayout>{
  Widget buildStack()=>Stack(
    alignment:const Alignment(0.6,0.6),
    children:[
      CircleAvatar(backgroundImage: AssetImage('assets/images/lucasmem.jpg'),
        radius: 100,),
        Container(
          decoration:BoxDecoration(
            color:Colors.black45,

          ),
          child:Text('Mia B',   
            style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,))
        )
    ]
  );

  @override
  Widget build(BuildContext ctx){
    return new Scaffold(
      appBar:AppBar(
        title : Text("ListView")
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:[buildStack()]
      ) 
      
    ); 
  }
  
}

class StackLayout extends StatefulWidget{
@override
StackLayoutState createState() => new StackLayoutState();

}