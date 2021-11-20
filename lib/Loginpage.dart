import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newtest/home.dart';
class login extends StatefulWidget {
  const login({ Key? key }) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  @override
// TextEditingController txt=  TextEditingController();
  // final user = TextEditingController();
TextEditingController txt=  TextEditingController();
var gettext = "";
    var lst = [];



  password(){
    setState(
      () 
      {
      lst.add(gettext);
      print(lst);
      // if (gettext=="12345") {
      // Get.to(home());
      // }
      }
      );
      }
      button(){
        setState(() {
          if (gettext=="12345") {
      Get.to(home());
      }
        });
      }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text("Login",style: TextStyle(color: Color(0xFF6200EE))),
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,),
      body: SingleChildScrollView(
        child: Column(
            children: [
              Container(
                    height: 300,
                    decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage("assets/images/sp.gif",
                      ),
                      fit: BoxFit.fill,
                      ),
                    ),
                  ),
              SizedBox(height: 50,),
              Container(
              child: Column(
              children: [
              TextField(
    cursorColor: Theme.of(context).cursorColor,
    maxLength: 20,
    decoration: InputDecoration(
    
      labelText: 'USERNAME',
      labelStyle: TextStyle(
        color: Color(0xFF6200EE),
      ),
      suffixIcon: Icon(
        Icons.check_circle,
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Color(0xFF6200EE)),
      ),
    ),
  ),            
  SizedBox(height: 20,),
  TextField(
    autofocus: true,
  cursorColor: Theme.of(context).cursorColor,
  maxLength: 20,
  decoration: InputDecoration(
    labelText: 'Password',
    labelStyle: TextStyle(
      color: Color(0xFF6200EE),
    ),
    helperText: 'Helper text',
    suffixIcon: Icon(
      Icons.check_circle,
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Color(0xFF6200EE)),
    ),
    ),
    controller: txt,
    onChanged: (value){
    gettext = value;
              } ,
),         
SizedBox(height: 30,),
ElevatedButton(onPressed: (){
  // if (gettext == "12345") {
  //   Get.to(home());
  // }
  button();
}, child: Text("Login",style: TextStyle(color: Color(0xFF6200EE)),),style:ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(color:Color(0xFF6200EE) )
    )
  )               
                ),
                
                
                )
                ],
              ),

              )
            ],
        ),
      ),
    );
  }
}