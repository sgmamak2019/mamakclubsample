import 'package:flutter/material.dart';


class ContainerLayoutState extends State<ContainerLayout>{
  Widget _buildDecoratedImage(int imageIndex)=>Expanded(
    child:Container(
      decoration:BoxDecoration(
        border:Border.all(width:10,color:Colors.black38),
        borderRadius: const BorderRadius.all(const Radius.circular(8))
      ),
      margin:const EdgeInsets.all(4),
      child:Image.asset('assets/images/lucasmem.jpg')
    )
  );
  Widget _buildImageRow(int imageIndex)=>Row(
      children:[_buildDecoratedImage(imageIndex),
                _buildDecoratedImage(imageIndex + 1)
      ]
  );
    
  Widget _buildImageColumn() => Container(
      decoration:BoxDecoration(
        color:Colors.black26,
      ),
      child:Column(
          children:[
            _buildImageRow(1),
            _buildImageRow(2)
          ]
      )
    );
 
  @override
  Widget build(BuildContext context){
    return new Container(
      child:_buildImageColumn()
    );
  }
}

class ContainerLayout extends StatefulWidget{
  @override
  ContainerLayoutState createState()=> new ContainerLayoutState();

}

/*
class FlutterLayout extends StatefulWidget{
  @override
  FlutterLayoutState createState() => new FlutterLayoutState();

}*/
