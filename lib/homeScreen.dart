


import 'package:flutter/material.dart';
import 'package:text_and_image_app/infoscreen.dart';
import 'package:text_and_image_app/profile.dart';
import 'package:text_and_image_app/transactScreen.dart';

void HomeMain(){
  runApp(homeScreenStater1());
}

class homeScreenStater1 extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(


      home: homeScreenStater2(),
    );
  }
}

class homeScreenStater2 extends StatefulWidget{
  homeScreenStater2({Key? key}) : super(key : key);
  @override
  homeScreen createState() => homeScreen(); 
}

class MyItem{
  final String txt1;
  final String txt2;
  final String img1;

  MyItem(this.txt1, this.txt2, this.img1);
}

class homeScreen extends State<homeScreenStater2>{
  final List<MyItem> items = [
    MyItem(
      'item',
      'item',
      'assets/Transaction 6.png',
    ), 

    MyItem(
      'item',
      'item',
      'assets/Transaction 6.png',
    ),

    MyItem(
      'item',
      'item',
      'assets/Transaction 6.png',
    ),
  ];
  
  @override
 
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
        new Stack(
          
          
            
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,

                  children: [
                    Stack(
                      children: [
                        new Image.asset(
                          "assets/Frame 15.png", 
                          width: MediaQuery.of(context).size.width, height: 198,
                          fit: BoxFit.fill,
                        ),

                        Positioned(
                          top: 185, left: 10,

                          child: 
                          new Text(
                            " ",
                            style: TextStyle(fontSize: 14, fontFamily: 'OpenSans', fontWeight: FontWeight.bold, color: Color.fromARGB(250, 6, 45, 104),),
                          ),
                          
                        ),

                        Positioned(
                          top: 185, left: 440,

                          child: 
                          new Text(
                            "",
                            style: TextStyle(fontSize: 14, fontFamily: 'OpenSans', fontWeight: FontWeight.bold, color: Color.fromARGB(250, 4, 28, 65),),
                          ),
                          
                        ),

                        Container(
                          //widthFactor:  0.7, heightFactor:  0.8,
                          //top: 0, left: 0,
                          width:  MediaQuery.of(context).size.width, 
                          height:  0.5*MediaQuery.of(context).size.height,
                          margin: EdgeInsets.only(
                            top: 0.24*MediaQuery.of(context).size.height, 
                            left:  0.0*MediaQuery.of(context).size.width),

                          child: ListView.builder(
                            itemCount: items.length,
                            itemBuilder: (context, index){
                              final item = items[index];
                              
                              return ListTile(
                                title: Stack(
                                  children: [
                                    Text(" ", style: TextStyle(color: Color.fromARGB(249, 0, 0, 0),fontSize:  12),),
                                    
                                    Container(
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context, 
                                            MaterialPageRoute(builder: (context) => Info())
                                          );
                                        },
                                        child: Image.asset(
                                        item.img1,
                                        width: MediaQuery.of(context).size.width, // Adjust the image size as needed
                                        height: 70,
                                        fit: BoxFit.cover,
                                                                            
                                        ),
                                      ),
                                    ),
                                    Text(" ", style:  TextStyle(fontSize: 17, color: Color.fromARGB(249, 0, 0, 0),),),
                                  ],
                                ),
                                 
                                
                              );
                            },
                          ),
                        )





                      ],
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
                                "assets/Group 2.png", 
                                width: MediaQuery.of(context).size.width, height: 98,
                                fit: BoxFit.cover,
                              ), 
                        
                              new Row(children: [
                                            
                                            
                                
                                Container(
                                  margin: EdgeInsets.only(top: 5),
                                  child: new TextButton(
                                    onPressed: () {
                                      AlertDialog(title: Text("Title"), content: Text("Content"),);
                                    },
                                    style: TextButton.styleFrom(
                                      foregroundColor: Colors.transparent, // No overlay color
                                      backgroundColor: Colors.transparent,
                                      //fixedSize: Size(47, 50),
                                      
                                    ), // No background color
                                    child: 
                                      Image.asset("assets/B-Nav Building Blocks.png", width: 187.2, height: 72,),
                                    ),
                                ),
                                
                                            
                                
                              
                                Container(
                                margin: EdgeInsets.only(top: 5),
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
                                      Navigator.push(
                                        context, 
                                        MaterialPageRoute(builder: (context) => transactScreenStater1())
                                      );
                                    },
                                            
                                    child: 
                                      Image.asset("assets/B-Nav Building Blocks (1).png", width: 187.2, ),
                                  ),
                                ), 
                                            
                                            
                              ],)
                              
                        
                                 
                                        
                          ]
                        ),
                      ],
                    ),

                
                  
              ],
            ),


            
          
        
      
    );
  }
}