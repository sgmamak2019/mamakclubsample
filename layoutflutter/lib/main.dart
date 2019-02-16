import 'package:flutter/material.dart';
//import 'package:layoutflutter/layout.dart';
//import 'package:layoutflutter/gridview.dart';
//import 'package:layoutflutter/listview.dart';
import 'package:layoutflutter/stacklayout.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  ListTile _tile(String title,String subtitle,IconData icon)=>ListTile(
    title:Text(title,
               style:TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    )
              ),
    subtitle: Text(subtitle),
    leading: Icon(
        icon,
        color: Colors.blue[500]
    )
  );
  Widget _buildList()=>ListView(
    children:[
      _tile('Cinearts at the Empire','85 Wportable Drive',Icons.theaters)
    ]
  );
 /*Widget _buildGrid()=>GridView.count(
     crossAxisCount:1,
    padding: const EdgeInsets.all(10),
    mainAxisSpacing: 4,
    crossAxisSpacing: 4,
    children :[ _buildList()]
  );*/
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:"Layouts Flutter",
     // home:new FlutterLayout()
      //-jake's layout sample
      // home:new ContainerLayout() //- jake's container sample
       // home:new GridLayout()
      // home:new GridLayout()
       //home: ListViewLayout()
       home:StackLayout()
       //new Center(child:_buildList())
    );
  }
}