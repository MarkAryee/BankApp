


import 'package:flutter/material.dart';
import 'package:text_and_image_app/forgot_password.dart';
import 'package:text_and_image_app/homeScreen.dart';
import 'package:text_and_image_app/main.dart';


class Profile extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      
      body: 
        Stack(
          children: [
            new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              
              children: [
                Image.asset('assets/ims/Frame 2.png', width: MediaQuery.of(context).size.width, height: 66, fit: BoxFit.fill,),
                Image.asset('assets/ims/Profile.png', width: MediaQuery.of(context).size.width, height: 156, fit: BoxFit.fill,),
                Image.asset('assets/ims/Frame 42.png', width: MediaQuery.of(context).size.width, height: 308, fit: BoxFit.fill,),
              ],
            ),
            
            Positioned(
              top: 10,
              left: 10,

              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => homeScreenStater1())
                  );
                }, 
                child: 
                  Text("     ", style: TextStyle(fontSize:  20),)
              ),
            ),

            Positioned(
              top: 290,
              left: 10,

              child: Container(
                width:  500,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => MySplash())
                    );
                  }, 
                  child: 
                    Text("                                  ", style: TextStyle(fontSize:  20),)
                ),
              ),
            ),

            Positioned(
              top: 330,
              left: 10,

              child: Container(
                width:  500,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => MyApp())
                    );
                  }, 
                  child: 
                    Text("                                   " , style: TextStyle(fontSize:  20),)
                ),
              ),
            ),
          ],
        ),
        
      
    );
  
  }
}
