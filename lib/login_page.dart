
import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'register_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final logo = Padding(
      padding: EdgeInsets.all(20),
        child: Hero(
        tag: 'TransportApp',
        child: CircleAvatar(
          radius: 55.0,
          backgroundColor: Color(0xffFDCF09),
          child: CircleAvatar(
            radius: 50,
            backgroundColor: Color(0xffffffff),
            backgroundImage: AssetImage('assets/logo.png'),
          ),
        )
      ),
    );
    final appTitle = Padding(
      padding: EdgeInsets.all(10),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: 'TransportApp',
          style: TextStyle(color: Colors.black, fontSize: 30)
        ),
      ),
    );
    final inputEmail = Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'Email',
          contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0)
          )
        ),
      ),
    );
    final inputPassword = Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: TextField(
        keyboardType: TextInputType.visiblePassword,
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Password',
          contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0)
          )
        ),
      ),
    );
    final buttonLogin = Padding(
      padding: EdgeInsets.only(bottom: 5),
      child: ButtonTheme(
        height: 56,
        child: RaisedButton(
          child: Text('Login', style: TextStyle(color: Colors.black, fontSize: 20)),
          color: Color(0xffFDCF09),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50)
          ),
          onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Dashboard()));
          },
        ),
      ),
    );
    final buttonForgotPassword = FlatButton(
      child: Text('Forgot Password', style: TextStyle(color: Colors.grey, fontSize: 16),),
      onPressed: null
    );
    final registerDecription = Padding(
      padding: EdgeInsets.only(top: 100),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: 'not TransportApp client yet?',
          style: TextStyle(color: Colors.black, fontSize: 16)
        ),
      ),
    );
    final buttonRegister = Padding(
      padding: EdgeInsets.only(top: 20),
      child: ButtonTheme(
        height: 56,
        child: RaisedButton(
          child: Text('Register', style: TextStyle(color: Colors.black, fontSize: 20)),
          color: Color(0xffFDCF09),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50)
          ),
          onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Register()));;
          },
        ),
      ),
    );
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 20),
            children: <Widget>[
              logo,
              appTitle,
              inputEmail,
              inputPassword,
              buttonLogin,
              buttonForgotPassword,
              registerDecription,
              buttonRegister
            ],
          ),
        ),
      )
    );
  }
}