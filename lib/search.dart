import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newtest/home.dart';
import 'package:newtest/profile.dart';
class search extends StatefulWidget {
  const search({ Key? key }) : super(key: key);

  @override
  _searchState createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: 
      AppBar(
        backgroundColor: Color(0xFF6200EE),
        leading: IconButton(onPressed: (){
      TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Search"
            ),
          );

        }, icon:  Icon(Icons.search))

        
      ),
            bottomNavigationBar: BottomAppBar(
        

        color: Colors.white70,
          child: new Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          
          IconButton(icon: Icon(Icons.home,color: Color(0xFF6200EE) ), onPressed: () {
Get.to(home());
        },),
          IconButton(icon: Icon(Icons.search,color: Color(0xFF6200EE) ), onPressed: () {
Get.to(search());
            },),
          IconButton(icon: Icon(Icons.person,color: Color(0xFF6200EE) ), onPressed: () {
Get.to(profile());
          },),


        ],
      ),
        ),
    );
  }
}