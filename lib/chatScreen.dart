import 'package:flutter/material.dart';
import 'model.dart';
import 'ListTile.dart';

class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => new _ChatsState();
}

class _ChatsState extends State<Chats> {
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: dummyData.length,
        itemBuilder: (context, i) => Column(
              children: <Widget>[
                Divider(
                  color: Colors.grey,
                  height: 1.0,
                  indent: 70.7,
                ),
                ListTile(
                    leading: CircleAvatar(
                      foregroundColor: Theme.of(context).primaryColor,
                      backgroundColor: Colors.grey,
                      child: Image(
                        image: AssetImage(dummyData[i].url),
                        fit: BoxFit.contain,
                      ),
                    ),
                    title: Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              dummyData[i].sender,
                              style: TextStyle(
                                  fontSize: 18.0, fontWeight: FontWeight.w600),
                            ),
                            Padding(
                                padding: EdgeInsets.only(left: 90.0),
                                child: Text(
                                  dummyData[i].time,
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 13.0),
                                ))
                          ]),
                    ),
                    subtitle: Container(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Text(dummyData[i].msg),
                    ),
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => Tile(ok: i,))))
              ],
            ));
  }
}
