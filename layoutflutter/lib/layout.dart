import 'package:flutter/material.dart';


class FlutterLayoutState extends State<FlutterLayout>{
  final descTextStyle = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.w800,
  fontFamily: 'Roboto',
  letterSpacing: 0.5,
  fontSize: 18,
  height: 2,
);
  Widget _iconList(){
   return DefaultTextStyle.merge(
  style: descTextStyle,
  child: Container(
    padding: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Icon(Icons.kitchen, color: Colors.green[500]),
            Text('PREP:'),
            Text('25 min'),
          ],
        ),
        Column(
          children: [
            Icon(Icons.timer, color: Colors.green[500]),
            Text('COOK:'),
            Text('1 hr'),
          ],
        ),
        Column(
          children: [
            Icon(Icons.restaurant, color: Colors.green[500]),
            Text('FEEDS:'),
            Text('4-6'),
          ],
        ),
      ],
    ),
  ),
);
  }
  Widget _stars(){
    return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.star, color: Colors.green[500]),
          Icon(Icons.star, color: Colors.green[500]),
          Icon(Icons.star, color: Colors.green[500]),
          Icon(Icons.star, color: Colors.black),
          Icon(Icons.star, color: Colors.black),
        ],
      );
  }
  Widget _ratings(){
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _stars(),
          Text(
            '170 Reviews',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontFamily: 'Roboto',
              letterSpacing: 0.5,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
  Widget _headerText(){
    return Container(child:Text("STRAWBERRY SHORTCAKE",
           style:  TextStyle(fontWeight: FontWeight.bold,fontSize:17.0)),
            margin: const EdgeInsets.all(15.0),
            padding: const EdgeInsets.all(3.0));
                                            
  }
  Widget _descriptionText(){
        return Container(child:Text("o wa titi wa heart o my cheerleader \n She was always right there naka beeper",maxLines:3,
           style:  TextStyle(fontWeight: FontWeight.normal,fontSize:14.0)),
            margin: const EdgeInsets.all(15.0),
            padding: const EdgeInsets.all(3.0));
  }
  List<Widget> _renderRow(){
    List<Widget> returnee = new List<Widget>();
    returnee.add(new Column(
                    children:[_headerText(),
                              _descriptionText(),
                              _ratings(),
                              _iconList()
                    ]
                ));
    returnee.add(new Expanded(child:Image.asset("assets/images/lucasmem.jpg")));
    return returnee;
  }
  @override
  Widget build(BuildContext context){

   return  Scaffold(
     appBar:AppBar(
       title : Text("Flutter Layout Demo")
    ),
    body:Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:_renderRow()
   ));
  }
}

class FlutterLayout extends StatefulWidget{
  @override
  FlutterLayoutState createState() => new FlutterLayoutState();

}
