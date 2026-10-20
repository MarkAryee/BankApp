


import 'package:flutter/material.dart';
import 'package:text_and_image_app/homeScreen.dart';
import 'package:text_and_image_app/profile.dart';

void TransactMain(){
  runApp(transactScreenStater1());
}

class transactScreenStater1 extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(


      home: transactScreenStater2(),
    );
  }
}

class transactScreenStater2 extends StatefulWidget{
  transactScreenStater2({Key? key}) : super(key : key);
  @override
  transactScreen createState() => transactScreen(); 
}

class transactScreen extends State<transactScreenStater2> with SingleTickerProviderStateMixin{
    Widget build(BuildContext context){
      return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),

      appBar: AppBar(
        title: Text(' ', style:  TextStyle(fontSize: 12, color: Color.fromARGB(255, 214, 231, 255)),),
        toolbarHeight: 70,
        backgroundColor: Color.fromARGB(255, 27, 47, 75),
        leading: 
          GestureDetector(
            onTap: () {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => Profile())
              );
            },
            child: 
                Stack(
                  children:[
                    
                    Container(
                      width:  120, height: 250,
                      child: Image.asset("assets/Union.png", width: 101.03, height: 42,)
                    ),

                    Container(
                      //top:  10,
                      margin: EdgeInsets.only(left: 80),
                      child: Text(' ', style:  TextStyle(fontSize: 12, color: Color.fromARGB(255, 214, 231, 255)),)
                    ),
                  ],
                    
                ),          
          ),
          
        leadingWidth: 280,
        
        flexibleSpace: FlexibleSpaceBar(
          background: 
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset("assets/Group 3.png", width: 52.12, height: 52,),
              ],
            )
          ),
        
        ),

        body: 
              new Stack(children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,

                  children: [
                    Stack(
                      children: [
                        new Image.asset(
                          "assets/ims/Theme1.png", 
                          width: MediaQuery.of(context).size.width, height: 48,
                          fit: BoxFit.cover,
                        ),



                        new Text(
                          "",
                          style: TextStyle(fontSize: 14, fontFamily: 'OpenSans', fontWeight: FontWeight.bold, color: Color.fromARGB(250, 6, 45, 104),),
                        ),
                      ],
                    ),

                    
                        Image.asset(
                          "assets/ims/Theme2.png", 
                          width: MediaQuery.of(context).size.width, height: 39,
                          fit: BoxFit.cover,
                        ),

                        
                        Image.asset(
                          "assets/Transaction 6.png", 
                          width: MediaQuery.of(context).size.width, height: 70,
                          fit: BoxFit.cover,
                        ),




                  ],
                ),

                
                
                
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    new Stack(
                    
                      children:[

                         
                    
                          new Image.asset(
                            "assets/Group 2 (1).png", 
                            width: MediaQuery.of(context).size.width, height: 98,
                            fit: BoxFit.fill,
                          ), 
                    
                          new Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                                        
                                        
                            
                            Container(
                              margin: EdgeInsets.only(top: 10),
                                child: new TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context, 
                                      MaterialPageRoute(builder: (context) => homeScreenStater1())
                                    );
                                  },
                                  style: TextButton.styleFrom(
                                    foregroundColor: Colors.transparent, // No overlay color
                                    backgroundColor: Colors.transparent,
                                    //fixedSize: Size(47, 50),
                                    
                                  ), // No background color
                                  child: 
                                    Image.asset("assets/B-Nav Building Blocks Inv (1).png", width: 187.2,),
                                  ),
                              ),
                              
                                          
                              
                            
                              Container(
                              margin: EdgeInsets.only(top: 10),
                                child:  
                                new TextButton(
                                // icon: Image.asset("assets/B-Nav Building Blocks (1).png", width: 187.2, height: 72,),
                                // iconSize: 187,
                                  style: TextButton.styleFrom(
                                    foregroundColor: Colors.transparent, // No overlay color
                                    backgroundColor: Colors.transparent,
                                    //fixedSize: Size(47, 50),
                                    
                                  ),
                                  onPressed: () {
                                    
                                  },
                                          
                                  child: 
                                    Image.asset("assets/B-Nav Building Blocks Inv.png", width: 187.2, ),
                                ),
                              ), 
                          
                          
                          ],
                        ),
                      ],
                    ),                     
                  ],
                
                ),
              ],
            ),                     
      );
    }
}