import 'package:flutter/material.dart';
import 'package:text_and_image_app/homeScreen.dart';

class Info extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      
      body: 
        Stack(
          children: [
            new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              
              children: [
                Image.asset('assets/ims/Theme3.png', width: MediaQuery.of(context).size.width, height: 25, fit: BoxFit.fill,),
                Image.asset('assets/ims/Frame 27.png', width: MediaQuery.of(context).size.width, height: 92, fit: BoxFit.fill,),
                Image.asset('assets/ims/Frame 28.png', width: MediaQuery.of(context).size.width, height: 92, fit: BoxFit.fill,),
              ],
            ),

            Container( child:
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => homeScreenStater1())
                  );
                },
                
              ),

            ),
          
          ],
        ),
        
      
    );
  
  }
}
