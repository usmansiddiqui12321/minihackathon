import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newtest/Loginpage.dart';
class splash extends StatefulWidget {
  const splash({ Key? key }) : super(key: key);

  @override
  _splashState createState() => _splashState();
}

class _splashState extends State<splash> {
    void initstate(){
    super.initState();
    }
  @override
  Widget build(BuildContext context) {
      
      Timer(  Duration(seconds: 3),
                () =>
      Navigator.push(
        context,
          MaterialPageRoute(builder: (context) => login()),
  )                );
    return Center(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.white,
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 200,),
                  Center(
                    
                    child: Container(
                      
                    child: Text("MiniHackathon" , style: TextStyle(fontSize: 50 ,)),
                      
                      height: 500,
                      decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage("assets/images/sp.gif",
                        ),
          
                      
                      ),
                    ),
          
                    ),
                  ),
                ],
              )),
          ),
        ),
      ),
    );
  }
}