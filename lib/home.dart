import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newtest/Loginpage.dart';
import 'package:newtest/cart.dart';
import 'package:newtest/fav.dart';
import 'package:newtest/profile.dart';
import 'package:newtest/search.dart';
class home extends StatefulWidget {
  const home({ Key? key }) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  drawer: Drawer(
      child: ListView(           
          padding: EdgeInsets.zero,  
          children: <Widget>[  
            UserAccountsDrawerHeader(  
              
              accountName: Text("Muhammad Usman Siddiqui"),  
              accountEmail: Text("usmansiddiqui12321@gmail.com"),  
              decoration: BoxDecoration(
                color: Color(0xFF6200EE)
              ),
              currentAccountPicture: CircleAvatar(
                radius: 30.0,
                backgroundImage:
                    AssetImage("assets/images/joker.png"),
              ),  
            ),  
            ListTile(  
              leading: Icon(Icons.home,color: Color(0xFF6200EE),), title: Text("Home"),  
              onTap: () {  
Get.to(home());             },  
            ),  
            ListTile(  
              leading: Icon(Icons.person,color: Color(0xFF6200EE),), title: Text("Profile"),  
              onTap: () {  
Get.to(profile());                  
              },  
            ),  
            ListTile(  
              leading: Icon(Icons.search,color: Color(0xFF6200EE),), title: Text("Search"),  
              onTap: () {  
Get.to(search()); 
            },  
            ),
              ListTile(  
              leading: Icon(Icons.logout,color: Color(0xFF6200EE),), title: Text("Logout"),  
              onTap: () {  
Get.to(login());             },  
            ),    
          ],  
        ),  
  ),
      appBar: 
      AppBar(
        iconTheme: IconThemeData(color: Color(0xFF6200EE)),
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      title: Text("Home Page",style: TextStyle(color: Color(0xFF6200EE)),),
      
      actions: [
      IconButton(onPressed: (){
      Get.to(fav());
  }, icon: Icon(Icons.favorite, color: Color(0xFF6200EE)),),
      IconButton(onPressed: (){
      Get.to(cart());
      }, icon: Icon(Icons.shopping_cart,color: Color(0xFF6200EE))),

      ],
      
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
              
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  
                children: [
                  
      abc("assets/images/Sweater.png","Cap" , "Only 2 pieces left"),
      SizedBox(width: 25,),
      abc("assets/images/Tshirt.png","Shirt" , "14 pieces left"),
      SizedBox(width: 25,),
      // abc("assets/images/Pant.png","shoes" , "18 pieces left"),
      SizedBox(width: 25,),
      abc("assets/images/Sweater.png","Sweaters" , "10 pieces left"),
      SizedBox(width: 25,),
      abc("assets/images/Tshirt.png","T-Shirt" , "16 pieces left"),
      SizedBox(width: 25,),
      // abc("assets/images/Pant.png","Shorts" , "12 pieces left"),
      SizedBox(width: 25,),
      
      
      
                ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            // xyz("assets/images/pant.png","Shorts" , "RP : 13", context),
            SizedBox(height: 10,),
      
            xyz("assets/images/Tshirt.png","T-Shirt" , "RP: 130", context),
            SizedBox(height: 10,),
            xyz("assets/images/Sweater.png","Sweaters" , "RP : 120", context),
            SizedBox(height: 10,),           
            // xyz("assets/images/pant.png","Shorts" , "RP : 13", context),
            SizedBox(height: 10,),
      
            xyz("assets/images/Tshirt.png","T-Shirt" , "RP: 130", context),
            SizedBox(height: 10,),
            xyz("assets/images/Sweater.png","Sweaters" , "RP : 120", context),
      
              SizedBox(height: 10,),
            // xyz("assets/images/pant.png","Shorts" , "RP : 13", context),
            SizedBox(height: 10,),
      
            xyz("assets/images/Tshirt.png","T-Shirt" , "RP: 130", context),
            SizedBox(height: 10,),
            xyz("assets/images/Sweater.png","Sweaters" , "RP : 120", context),
            SizedBox(height: 10,),
          
          ],
        ),
      ),
    );
  }
}
Widget abc(String a,String head ,String p){
    return Padding(
                    padding:EdgeInsets.all(19),
                    child: Row(
                      children: [
                        Container(
                          height: 120,
                          width: 270,
                          decoration: BoxDecoration(
                            
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 100,
                                width: 130,
                                decoration: BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage(a),
                              fit: BoxFit.fill
                              
                            ),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          ),
                          SizedBox(width: 10,),
                          Column(
                          children: [
                          Text(head,style: TextStyle(
                            fontSize: 30,)
                            ),
                          Text(p
                          ,style: TextStyle(
                            fontSize: 15
                          )
                          )
                          ],
                          )
                            ],
                            
                          ),
                        ),
                        SizedBox(height: 50,),
                        
                      ],
                    ),
                  );
                }

Widget xyz (String a , String b ,String c, BuildContext context){

return Padding(
                    padding:EdgeInsets.all(19),
                    child: Row(
                      children: [
                        Center(
                          child: Container(
                            height: 200,
                            width: 330,
                            decoration: BoxDecoration(
                            border: Border.all(
                    color: Colors.black,
                    width: 1,
                  
                  ),
                  borderRadius: BorderRadius.circular(20)
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  Container(
                                    height: 100,
                                    width: 130,
                                    decoration: BoxDecoration(
                                    image: DecorationImage(
                                  image: AssetImage(a),
                                  fit: BoxFit.fill
                                  
                                ),
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              ),
                              SizedBox(width: 10,),
                              Row(
                              children: [
                              
                              Text(b,style: TextStyle(
                                fontSize: 30,)
                                ),
                              Text(c
                              ,style: TextStyle(
                                fontSize: 25
                              )
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: IconButton(icon: Icon(Icons.add_shopping_cart,color: Color(0xFF6200EE) ), onPressed: () {
                                
                                },),
                              ),
                              ],
                              )
                                ],
                                
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 50,),
                        
                      ],
                    ),
                  );
                }