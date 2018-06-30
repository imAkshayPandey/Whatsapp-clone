import 'package:flutter/material.dart';
import 'model.dart';

class Tile extends StatelessWidget {
  Tile({this.ok});
  final int ok;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
         // automaticallyImplyLeading: false,
          centerTitle: false,
          leading:
                
                 IconButton(icon:Icon(Icons.arrow_back),
                  onPressed: () {Navigator.of(context).pop(context);},
                  tooltip: "Backward",),
                  title: ListTile(title:Text(dummyData[ok].sender) ,leading: CircleAvatar(backgroundImage: AssetImage(dummyData[ok].url),),),
               
            
          
          // primary: true,
          actions: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.videocam,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.call),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.more_vert),
                  onPressed: () {},
                ),
              ],
            )
          ]),
    );
  }
}
