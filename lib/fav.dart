import 'package:flutter/material.dart';
import 'package:get/get.dart';
class fav extends StatefulWidget {
  const fav({ Key? key }) : super(key: key);

  @override
  _favState createState() => _favState();
}

class _favState extends State<fav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
        title: Center(child: Text("favourites")),
      backgroundColor: Color(0xFF6200EE),
      ),
      body: 
      Column(
        
      )
      ,
    );
  }
}
