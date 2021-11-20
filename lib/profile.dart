import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newtest/home.dart';
import 'package:newtest/search.dart';
class profile extends StatefulWidget {
  const profile({ Key? key }) : super(key: key);

  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Center(child: Text("profile")),
        backgroundColor: Color(0xFF6200EE),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.35,
              color:  Color(0xFF6200EE),
              child: Column(
                children: [
                SizedBox(height : 10),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/joker.png"),
                    radius: 80,
                  ),
                  SizedBox(height: 30,),
                  Text("Muhammad Usman Siddiqui", style: TextStyle(fontSize: 25),)
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.transparent,
              child: Column(
                children: [
                  SizedBox(height : 20),
                  Row(
                    children: [
                      Icon((Icons.person)),
                      Text("MuhammadUsmansiddiqui12321@gmail.com")
                    ],
                  ),
                  SizedBox(height : 20),
                  Row(
                    children: [
                      Icon((Icons.phone)),
                      Text("03040052404")
                    ],
                  ),
                  SizedBox(height : 20),
                  Row(
                    children: [
                      Icon((Icons.facebook)),
                      Text("fb.com/0300d")
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}