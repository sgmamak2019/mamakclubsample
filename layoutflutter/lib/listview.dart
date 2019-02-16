import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

class ListViewState extends State<ListViewLayout>{

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
  Widget _buildList()=>new Flexible(child:ListView(
    children:[
        _tile('CineArts at the Empire', '85 W Portal Ave', Icons.theaters),
        _tile('The Castro Theater', '429 Castro St', Icons.theaters),
        _tile('Alamo Drafthouse Cinema', '2550 Mission St', Icons.theaters),
        _tile('Roxie Theater', '3117 16th St', Icons.theaters),
        _tile('United Artists Stonestown Twin', '501 Buckingham Way',
            Icons.theaters),
        _tile('AMC Metreon 16', '135 4th St #3000', Icons.theaters),
        Divider(),
        _tile('Kescaped_code#39;s Kitchen', '757 Monterey Blvd', Icons.restaurant),
        _tile('Emmyescaped_code#39;s Restaurant', '1923 Ocean Ave', Icons.restaurant),
        _tile(
            'Chaiya Thai Restaurant', '272 Claremont Blvd', Icons.restaurant),
        _tile('La Ciccia', '291 30th St', Icons.restaurant),
    ]
  ));
 /*Widget _buildGrid()=>GridView.count(
     crossAxisCount:1,
    padding: const EdgeInsets.all(10),
    mainAxisSpacing: 4,
    crossAxisSpacing: 4,
    children :[ _buildList()]
  );*/
  @override
  Widget build(BuildContext ctx){
    return new Scaffold(
      appBar:AppBar(
        title : Text("ListView")
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:[_buildList()]
      )
      
    ); 
  }
}
class ListViewLayout extends StatefulWidget{
  @override
  ListViewState createState() => new ListViewState();
}