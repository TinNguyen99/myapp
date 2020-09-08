import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: (
          Container(
            constraints: BoxConstraints.expand(),
            padding: EdgeInsets.fromLTRB(25, 150, 25, 25),
            color: Colors.yellow,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 35),
                  child: Container(
                    width: 85,
                    height: 85,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white60,
                    ),
                  child: FlutterLogo(),
                  ),
                ),
                
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 35),
                  child: Text(
                  "Wellcome to Flutter, TN!",
                  style: TextStyle(color: Colors.white70, fontSize: 30, fontWeight: FontWeight.w900),
                )
                ),
                

                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Username",
                      labelStyle: TextStyle(color: Colors.green, fontSize: 35, fontWeight: FontWeight.bold)
                    ),
                  )
                ),

                
                Stack(
                  
                  alignment: AlignmentDirectional.centerEnd,
                  children: [
                      Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: TextStyle(color: Colors.green, fontSize: 35, fontWeight: FontWeight.bold)
                        ),
                      )
                    ),
                      Text(
                        "Show",
                        style: TextStyle(color: Colors.green, fontSize: 20, fontWeight: FontWeight.w900),
                      )
                  ]
                  
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
                  child: SizedBox(
                  width: double.infinity,
                  height: 70,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                    onPressed: ok, 
                    color: Colors.blue[300],
                    child:  Text(
                        "Sign In",
                        style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                )
                ),

                Padding(
                  
                  padding: EdgeInsets.fromLTRB(0, 15, 0, 10),
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.centerRight,
                    //crossAxisAlignment: CrossAxisAlignment.stretch,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            


InkWell(

  hoverColor: Colors.white,
    child: Text(
                                "Forgot password?",
                              style: TextStyle(color: Colors.blue, fontSize: 17, fontWeight: FontWeight.bold),
                            ),
    onTap: () {print("OK TinNguyen");},
),

                          // RaisedButton(
                          //   onPressed: ok,
                          //   child: Text(
                          //     "Forgot password?",
                          //     style: TextStyle(color: Colors.blue, fontSize: 17, fontWeight: FontWeight.bold),
                          //   ),
                          // ),
                          
                          // Text(
                          //     "Forgot password?",
                          //     style: TextStyle(color: Colors.blue, fontSize: 17, fontWeight: FontWeight.bold),
                          //   ),

                          Text(
                              "Login",
                              style: TextStyle(color: Colors.blue, fontSize: 17, fontWeight: FontWeight.bold),
                            ),  
                          ],
                          
                        )
                  )
                  
                 
                  
                ),
                
              ],
            ),
          )
        ),
      ),
    );
  }
}

void ok(){
  print("SIGN IN");
}

