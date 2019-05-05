import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Hello World App',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      appBar: AppBar(
        title: Text("Hello World"),
        centerTitle: true,
        leading: IconButton(
            icon:Icon(Icons.menu), onPressed: (){
              print('Menu Button Pressed');

        }),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.youtube_searched_for), onPressed: (){
            print('Search Pressed');
          })
        ],

      ),

      floatingActionButton: FloatingActionButton(
          onPressed: () {print("Hello World");},
        child: Icon(Icons.camera),

          ),

      body: Center(
        child: Text.rich(TextSpan(children:[
          TextSpan(
            text: "Hello",
            style: TextStyle(fontSize: 25,fontStyle: FontStyle.italic)
          ),

          TextSpan(
                text: " World",
                style: TextStyle(fontSize: 25,fontStyle: FontStyle.normal,color: Colors.amber)
            ),



            ]))
          )
        );
  }
  
}



