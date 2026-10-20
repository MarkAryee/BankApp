import 'package:flutter/material.dart';
import 'package:text_and_image_app/main.dart';

import 'splash_page.dart';


class MySplash  extends StatefulWidget{
  MySplash({key}): super(key: key);
  @override

  ForgotPassword createState() => new ForgotPassword();
}

class ForgotPassword extends State<MySplash>{
  //-----------------------------------------------------------------------------------//
  
  // For Place holder state changes on Sed Text Fields
  bool EmailshowPlaceHolder = true;
  bool PasswordshowPlaceHolder = true;

  //Forgot Page Ones
  TextEditingController NewController = TextEditingController();
  TextEditingController ConfirmsController = TextEditingController();
  bool NewshowPlaceHolder = true;
  bool ConfirmshowPlaceHolder = true;
  //Comes with Editable Text Controllers 
  @override
  void dispose() {
    ConfirmsController.dispose();
    NewController.dispose();
    super.dispose();
  }
  //-----------------------------------------------------------------------------------//
  

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 2, 46, 100),

      
      
      body:

        new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: <Widget>[
              new Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: <Widget>[

                  new Row(

                    children:[
                      IconButton(
                        icon: Image.asset("assets/Back Button.png", width: 65, height: 42,),
                        onPressed: () {
                          Navigator.push(
                            context, 
                            MaterialPageRoute(builder: (context)=>MyHomePage()),
                          );
                        },
                        iconSize: 65,
                      ),

                      new SizedBox(
                        width: 200,
                      ),

                      new Image.asset(
                        "assets/Group 3.png",
                        width: 81.02,
                        height: 32,
                      ),
                    ],

                  ),
                  

                  new SizedBox(
                    height: 174,
                  ),

                  new Stack(
                    alignment: Alignment.centerLeft,

                    children:<Widget>[

                      new Image.asset(
                        'assets/Form.png',
                        fit:BoxFit.fill,
                        width: 343.0,
                        height: 56.0,
                      ),

                      //Text and Editable Text
                          new Row(
                            mainAxisAlignment:  MainAxisAlignment.center,

                            children:<Widget>[
                              //Margin from the left for the text
                              new SizedBox(
                                height: 0.0,
                                width: 20.0,
                              ),

                              
                              new Container( 
                                width: 300,
                                height: 17,
                                //color: Colors.blue.withOpacity(0.2),
                                
                                child:
                                new Stack(
                                  children: [
                                    new EditableText(
                                  
                                    style: new TextStyle(
                                      color: Color.fromARGB(255, 33, 33, 33),
                                      fontSize: 14.0,
                                    ),

                                    textAlign: TextAlign.start,
                                    obscureText: true,
                                  

                                    controller: NewController,
                                    focusNode: FocusNode(),
                                    cursorColor: Color.fromARGB(435, 25, 354, 33),
                                    backgroundCursorColor: Color.fromARGB(435, 25, 354, 33),

                                    onChanged: (value) {
                                      setState(() {
                                        NewshowPlaceHolder = value.isEmpty;
                                      });
                                    },
                                    ),

                                    //Placeholder Text
                                    if(NewshowPlaceHolder)
                                    IgnorePointer(
                                      child:
                                      Text(
                                        "New Password",
                                        ),
                                    ),

                                  ],
                                ),                          
                              )
                            ],

                          ),

                    ],

                  ),
    
                  new SizedBox(
                    width: 69.0,
                    height: 18.0,
                  ),
    
                  new Stack(
                    alignment: Alignment.centerLeft,
                   
                        children: <Widget>[

                          
                          new Image.asset(
                            'assets/Form.png',
                            fit:BoxFit.fill,
                            width: 343.0,
                            height: 56.0,
                            
                          ),

                          //Input Field
                          new Row(
                            mainAxisAlignment:  MainAxisAlignment.center,

                            children:<Widget>[
                              //Margin from the left for the text
                              new SizedBox(
                                height: 0.0,
                                width: 20.0,
                              ),

                              
                              new Container( 
                                width: 300,
                                height: 17,
                                //color: Colors.blue.withOpacity(0.2),
                                
                                child:
                                new Stack(
                                  children: [
                                    new EditableText(
                                  
                                    style: new TextStyle(
                                      color: Color.fromARGB(255, 33, 33, 33),
                                      fontSize: 14.0,
                                    ),

                                    textAlign: TextAlign.start,
                                    obscureText: true,
                                  

                                    controller: ConfirmsController,
                                    focusNode: FocusNode(),
                                    cursorColor: Color.fromARGB(435, 25, 354, 33),
                                    backgroundCursorColor: Color.fromARGB(435, 25, 354, 33),

                                    onChanged: (value) {
                                      setState(() {
                                        ConfirmshowPlaceHolder = value.isEmpty;
                                      });
                                    },
                                    ),

                                    //Placeholder Text
                                    if(ConfirmshowPlaceHolder)
                                    IgnorePointer(
                                      child:
                                      Text(
                                        "Confirm New Password",
                                        ),
                                    ),

                                  ],
                                ),                          
                              )
                            ],

                          ),
                        ]
                      
                       
                    

                  ),
                  
    
                  new SizedBox(
                    width: 88.0,
                    height: 59.0,
                  ),

                  new Stack(
                    alignment: Alignment.center,
                    children: <Widget>[

                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (context) => SplashPage()),
                          );

                        },
                        

                        child: 
                          new Image.asset(
                          'assets/Form.png',
                          width: 343.0,
                          height: 59.0,
                          color:  Color.fromARGB(255, 230, 176, 20),
                          fit:BoxFit.fill,
                          ),
                        

                      ),
    
                      
                      IgnorePointer(

                        child:
                        new Text(
                          "Reset Password",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 0, 0, 0)
                          ),
                        )
                      ),

                    ],
                  ),

                  

                  

                  

                ]
    
              )
            ]
    
          ),   
    );

  }
}