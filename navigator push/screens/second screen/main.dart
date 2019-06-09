
import 'dart:math';

import 'package:flutter/material.dart' ;
import 'package:flutter/painting.dart';

void main() => runApp(App());
class App extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "das",
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: (){
          print("floating action");
        },
        child: Icon(Icons.edit),
      ),
      appBar: AppBar(
        title: Text("Unread", style: TextStyle( fontSize: 30.0),),
        centerTitle: false,
        backgroundColor: Colors.red,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white,),
          onPressed: () {},
        ),
        
        actions: <Widget>[
       IconButton(
         icon: Icon(Icons.search),
         onPressed: (){
           print("search");
         },
       )
        ],   
      
    ),
    body: ListView(
      shrinkWrap: true,
      
      children:ListTile.divideTiles(
        context: context,
        tiles:<Widget>[
        ListTile(
          
          leading: Container(
            height: 250,
            width: 50,
            child: Icon(Icons.fiber_manual_record,size: 50),
            
          ),
          trailing: Container(
            width: 320,
            height: 250,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                   Text("Amazon Alexa Team", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),) ,
                    Text("10:57AM", style: TextStyle( fontStyle: FontStyle.normal,fontSize: 12,color: Colors.blue)),
                   
                  ],
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("[REMIND...]This october build Alexa skills a..",style: TextStyle( fontSize: 14, fontWeight: FontWeight.bold)),
                  ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                   Text("Build alexa skills;get Sony Play Station 4,Bose..", style: TextStyle(fontSize: 12.0),) ,
                    Icon(Icons.star, size: 18,),
                   
                  ],
              
                ),
                
              ],
            ),
          ),
        ),
        ListTile(
          
          leading: Container(
            height: 350,
            width: 50,
            child: Icon(Icons.fiber_manual_record,size: 50),
            
          ),
          trailing: Container(
            width: 320,
            height: 350,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                   Text("Amazon Alexa Team", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),) ,
                    Text("10:57AM", style: TextStyle( fontStyle: FontStyle.normal,fontSize: 12,color: Colors.blue)),
                   
                  ],
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("[REMIND...]This october build Alexa skills a..",style: TextStyle( fontSize: 14, fontWeight: FontWeight.bold)),
                  ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                   Text("Build alexa skills;get Sony Play Station 4,Bose..", style: TextStyle(fontSize: 12.0),) ,
                    Icon(Icons.star, size: 18,),
                   
                  ],
                ),
                
              ],
            ),
          ),
        ),
        
        
      ],
    ).toList(),
    ),
    );
    }
}