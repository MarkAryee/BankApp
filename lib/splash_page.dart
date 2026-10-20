// new_page.dart


import 'package:flutter/material.dart';
import 'package:text_and_image_app/homeScreen.dart';
import 'package:text_and_image_app/profile.dart';

import 'package:text_and_image_app/transactScreen.dart';



class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 7), () {GotoHomeDart(context);});

    return MaterialApp(
      
      //backgroundColor: Color.fromARGB(255, 255, 255, 255),

      home: SplashStatefulStarter(),
    );
  }

  void GotoHomeDart(context){
    //MaterialPageRoute route = new MaterialPageRoute(builder: (context) => homeScreen());
    //Navigator.push(context, route);
    HomeMain();
    //MyApp().Into_HomeScreen = true;
    
  }
}

class SplashStatefulStarter extends StatefulWidget{
  //SplashStatefulStarter({Key? key}) : super(key: key);
  @override
  SplashStateful createState() => SplashStateful();
}

class SplashStateful extends State<SplashStatefulStarter> with SingleTickerProviderStateMixin{
 
  late Animation<double> _scaleAnimation;
  late AnimationController _controller,_scaleController;
  late Animation<Offset> _animation, _animationFromTop;
  bool IsGoToHomeFunctionCalled = false;

  

  void initState(){
    super.initState();

    //Initialise the controller before using it
    _controller = AnimationController(
      duration: Duration(seconds: 3),
      vsync: this
    );
    

    _scaleAnimation = Tween<double>( begin: 1.0, end: 0.4,).animate(CurvedAnimation(
        parent: _controller,
        curve: Interval(0.0, 0.5),
      )
    );

    _animation = Tween<Offset>(begin: Offset(0.0, 1.0), end: Offset(0.0, 0.0), ).animate(CurvedAnimation(
        parent: _controller,
        curve: Interval(0.5, 1.0),
      )
    );
    _animationFromTop = Tween<Offset>(begin: Offset(0.0, -1.0), end: Offset(0.0, 0.0),).animate(CurvedAnimation(
        parent: _controller,
        curve: Interval(0.5, 1.0),
        )
      );
      
    _controller.forward();
    //_scaleController.forward();

    _controller.addStatusListener((status) {HomeMain();});
  }

  @override 
  void dispose(){
    _scaleController.dispose();
    _controller.dispose();
    super.dispose();
  }

  
  Widget build(context){
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
                new Center(
                  child:
                  ScaleTransition(
                    scale: _scaleAnimation,
                    child: new Image.asset(
                      "assets/Loading.png",
                        width: 130,
                        height: 80,
                             
                      ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,

                  children: [
                    SlideTransition(
                        position: _animationFromTop,
                        child: 
                        Stack(
                          children: [
                            new Image.asset(
                              "assets/Frame 15.png", 
                              width: MediaQuery.of(context).size.width, height: 206,
                              fit: BoxFit.cover,
                            ),

                            Positioned(
                              top: 185, left: 10,

                              child: 
                              new Text(
                                "",
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


                          ],
                        ),
                        
                      ),
                  ],
                ),
                
                
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    new Stack(
                    
                      children:[

                         
                    
                          SlideTransition(
                            position: _animation,
                            child: new Image.asset(
                              "assets/Group 2.png", 
                              width: MediaQuery.of(context).size.width, height: 98,
                              fit: BoxFit.cover,
                            ),
                          ), 
                    
                          SlideTransition(
                            position: _animation,
                            child: new Row(children: [
                                          
                                          
                              
                              Container(
                              margin: EdgeInsets.only(top: 10),
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
                                    Navigator.push(
                                      context, 
                                      MaterialPageRoute(builder: (context) => transactScreenStater1())
                                    );
                                  },
                                          
                                  child: 
                                    Image.asset("assets/B-Nav Building Blocks (1).png", width: 187.2, height: 72,),
                                ),
                              ), 
                                          
                                          
                            ],),
                          )
                          
                    
                             
                                    
                      ]
                    ),
                  ],
                ),

                
                  
              ],
            ),
          
    );
  }
}
