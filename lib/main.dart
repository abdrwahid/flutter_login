//import 'package:flutter/material.dart';

// class loginpage extends StatefulWidget{
//   @override
//   _LoginPageState createState() =>_LoginPageState()
// }
import 'package:flutter/material.dart';
import 'login_page.dart';
import 'home_page.dart';
import 'reg_page.dart';
import 'for_password.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
    RegPage.tag: (context) => RegPage(),
    ForPassPage.tag: (context) => ForPassPage(),
  };
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mindzzle',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        // fontFamily:'Nunito',
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}