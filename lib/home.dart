import 'package:flutter/material.dart';
import 'chatScreen.dart';
import 'cameraScreen.dart';
import 'statusScreen.dart';
import 'callsScreen.dart';
// 

class WhatsAppHome extends StatefulWidget {

WhatsAppHome(this.cameras);

 var cameras;

  @override
  _WState createState() => new _WState();
}

class _WState extends State<WhatsAppHome> with SingleTickerProviderStateMixin {
  // final route=<String,Builder>(){
  //   "./ok":(BuildContext context)=>Chat();
  // };
  TabController controller;
  @override
  void initState() {
    super.initState();
    controller = new TabController(
      vsync: this,
      length: 4,
      initialIndex: 1,
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        toolbarOpacity: 0.9,
        bottom: TabBar(
          indicatorSize: TabBarIndicatorSize.tab,
          controller: controller,
          tabs: <Widget>[
            Tab(
              icon: Icon(
                Icons.camera_alt,
                size: 20.0,
              ),
            ), //Padding(padding: EdgeInsets.only(right:12.0),),
            Tab(
              child: Text(
                "CHATS",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Tab(
              child: Text(
                "STATUS",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Tab(
              child: Text(
                "CALLS",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
          indicatorColor: Colors.white,
        ),
        title: Text("WhatsApp"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search),onPressed: (){},),
          Padding(padding: EdgeInsets.only(right: 14.0)),
          IconButton(icon:Icon(Icons.more_vert),onPressed: (){},)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        mini: false, isExtended: true,
        child: CircleAvatar(
          child: Icon(
            Icons.message,
            color: Colors.white,
          ),
                  backgroundColor: Theme.of(context).primaryColor,
                  foregroundColor: Theme.of(context).accentColor,

        ),
        backgroundColor: Theme.of(context).primaryColor,
        // foregroundColor: Theme.of(context).accentColor,

        onPressed: () {},
      ),
      body: Container(color: Colors.white,
        // decoration: BoxDecoration(
        //     image: DecorationImage(
        //         image: AssetImage(
        //           "img/back.png",
        //         ),
        //         fit: BoxFit.fill),
        //     shape: BoxShape.rectangle),
            child: TabBarView(controller: controller,
              children: <Widget>[
                Camera(widget.cameras),
                Chats(),
                Status(),
                Calls()
              ],
            ),
      ),
    );
  }
}
