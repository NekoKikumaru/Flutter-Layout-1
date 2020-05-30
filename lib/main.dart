import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(icon: Icon(Icons.menu), onPressed: (){}, color: Colors.black),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.more_vert), onPressed: (){}, color: Colors.black)
          ]
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                child: Text("Our Teams", style: TextStyle(fontSize: 20)),
              ),
              RowView(),
              Container(
                height: 15
              ),
              RowView(),
              Container(
                margin: EdgeInsets.all(18),
                child: Text("Mission", style: TextStyle(fontSize: 18)),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Text("A Mission Statement defines the organization’s purpose and primary objectives. Its prime function is internal – to define the key measure or measures of the organization’s success – and its prime audience is the leadership team and stockholders.", softWrap: true)
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: Text("Vision Statements also define the organizations purpose, but this time they do so in terms of the organization’s values rather than bottom line measures (values are guiding beliefs about how things should be done.) The vision statement communicates both the purpose and values of the organization. For employees, it gives direction about how they are expected to behave and inspires them to give their best. Shared with customers, it shapes customers’ understanding of why they should work with the organization.", softWrap: true)
              ),
              Container(
                margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
                child: Text("A Mission Statement defines the organization’s purpose and primary objectives. Its prime function is internal – to define the key measure or measures of the organization’s success – and its prime audience is the leadership team and stockholders.", softWrap: true)
              )
            ]
          )
        )
      )
    );
  }
}

class RowView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ColumnView(),
        ColumnView(),
        ColumnView()
      ],
    );
  }
}

class ColumnView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Image.network("https://cdn5.vectorstock.com/i/thumb-large/95/64/default-placeholder-businesswoman-half-length-por-vector-20889564.jpg", width: 100, height: 100),
        ImgView(),
        Text("Betty L.", style: TextStyle(fontWeight: FontWeight.bold)),
        Text("Marketing")
      ],
    );
  }
}

class ImgView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: new DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage("https://cdn5.vectorstock.com/i/thumb-large/95/64/default-placeholder-businesswoman-half-length-por-vector-20889564.jpg")
        )
      ),
    );
  }

}