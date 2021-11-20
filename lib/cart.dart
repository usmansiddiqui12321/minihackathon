import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newtest/splashscreen.dart';
class cart extends StatefulWidget {
  const cart({ Key? key }) : super(key: key);

  @override
  _cartState createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Center(child: Text("Cart")),
      backgroundColor: Color(0xFF6200EE),
      ),
      body: 
      Column(
        
      )
      ,
    );
  }
}
