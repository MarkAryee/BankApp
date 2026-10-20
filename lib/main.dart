import 'package:flutter/material.dart';


import 'splash_page.dart';
import 'forgot_password.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  //bool Into_HomeScreen=false;
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Bank App',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF2196f3),
        hintColor: const Color(0xFF2196f3),
        canvasColor: Color.fromARGB(255, 27, 47, 75),
        fontFamily: 'Roboto',
      ),

      home: new MyHomePage(),      
      
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
//-----------------------------------------------------------------------------------//
  //For Editable Text Fields
  TextEditingController Emailtextcontroller = TextEditingController();
  TextEditingController Passwordtextcontroller = TextEditingController();
  // For Place holder state changes on Sed Text Fields
  bool EmailshowPlaceHolder = true;
  bool PasswordshowPlaceHolder = true;
  
  //Comes with Editable Text Controllers 
  @override
  void dispose() {
    Emailtextcontroller.dispose();
    Passwordtextcontroller.dispose();
    super.dispose();
  }
  //-----------------------------------------------------------------------------------//

    @override
    Widget build(BuildContext context) {
      return new Scaffold(
        body:
          
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: <Widget>[
              new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Image.asset(
                    'assets/Group 3.png',
                    fit:BoxFit.fill,
                    width: 157.0,
                    height: 60.0,
                  ),


                  new SizedBox(
                    width: 69.0,
                    height: 90.0,
                  ),


                  //Email Input field
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
                                //obscureText: true,
                              

                                controller: Emailtextcontroller,
                                focusNode: FocusNode(),
                                cursorColor: Color.fromARGB(435, 25, 354, 33),
                                backgroundCursorColor: Color.fromARGB(435, 25, 354, 33),

                                onChanged: (value) {
                                  setState(() {
                                    EmailshowPlaceHolder = value.isEmpty;
                                  });
                                },
                                ),

                                //Placeholder Text
                                if(EmailshowPlaceHolder)
                                IgnorePointer(
                                  child:
                                  Text(
                                    "Email",
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
    
                  // Password Input Field
                  new Stack(
                    alignment: Alignment.centerLeft,
                   
                        children: <Widget>[

                          //Background Image
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
                                  

                                    controller: Passwordtextcontroller,
                                    focusNode: FocusNode(),
                                    cursorColor: Color.fromARGB(435, 25, 354, 33),
                                    backgroundCursorColor: Color.fromARGB(435, 25, 354, 33),

                                    onChanged: (value) {
                                      setState(() {
                                        PasswordshowPlaceHolder = value.isEmpty;
                                      });
                                    },
                                    ),

                                    //Placeholder Text
                                    if(PasswordshowPlaceHolder)
                                    IgnorePointer(
                                      child:
                                      Text(
                                        "Password",
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
                          "Login",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 0, 0, 0)
                          ),
                        )
                      ),

                      ],
                    ),

                  

                  new SizedBox(
                    width: 0.0,
                    height: 224.0,
                  ),

                  new GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => MySplash()),
                      );
                    },

                    child:
                    new Text(
                      "Forgot Password?", 
                      style: new TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 12,
                      ),
                    )
                  )

                ]
    
              )
            ]
    
          ),
    
      );
    }

    

    
}



