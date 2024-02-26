import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme:ThemeData(primaryColor: Colors.green),
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors:[
            Color(0xFFF44336),
            Color(0xFF4DB6AC),
            Color(0xFF304FFE),
          ]
          )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.
            center,
            children:  [
              Container(
                height: 480,
                width: 325,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 30,),
                    Text('Hello',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    SizedBox(height: 10,),
                    Text('Please Login into your account',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey
                    ),
                    )
                  ],
                ),
              ),
              Container(
                width: 250,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Email Address',
                    suffixIcon: Icon(FontAwesomeIcons.envelope,
                    size: 17,) 
                  )
                  
                  ,)
              )
            ],
          ),
          )
        )
    );
  }
}
