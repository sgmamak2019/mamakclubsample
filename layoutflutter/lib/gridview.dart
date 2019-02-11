import 'package:flutter/material.dart';

class GridLayoutState extends State<GridLayout>{
  
  List<Container> _buildGridTileList(int count)=>List.generate(
    count,(i)=> Container(child:Image.asset("assets/images/lucasmem.jpg"))
  );
  //use GridView.count if you want a grid based on the number of columns
  //use GridView.extent if you want the number of columns to be based on the width of screen
  Widget _buildGrid()=>GridView.count(
    //maxCrossAxisExtent: 150,
    crossAxisCount:2,
    padding: const EdgeInsets.all(10),
    mainAxisSpacing: 4,
    crossAxisSpacing: 4,
    children : _buildGridTileList(10)
  );

  @override
  Widget build(BuildContext buildContext){
    return new Container(
      child:_buildGrid()
    );
  }
}

class GridLayout extends StatefulWidget{
  @override
  GridLayoutState createState()=> new GridLayoutState();
}
