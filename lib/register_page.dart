import 'package:flutter/material.dart';
import 'login_page.dart';

class Register extends StatelessWidget {
  @override
    
  Widget build(BuildContext context) {
        final appTitle = Padding(
      padding: EdgeInsets.only(top: 50, bottom: 20),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: 'TransportApp',
          style: TextStyle(color: Colors.black, fontSize: 30)
        ),
      ),
    );
    final logo = Padding(
      padding: EdgeInsets.only(bottom: 10),
        child: Hero(
        tag: 'TransportApp',
        child: CircleAvatar(
          radius: 55.0,
          backgroundColor: Color(0xffFDCF09),
          child: CircleAvatar(
            radius: 50,
            backgroundColor: Color(0xffffffff),
            backgroundImage: AssetImage('assets/logowink.png'),
          ),
        )
      ),
    );
    final buttonAlreadyClient = FlatButton(
      child: Text('Already our client?', style: TextStyle(color: Colors.grey, fontSize: 16),),
      onPressed: () { Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));;}
    );
    final formTitle = Padding(
      padding: EdgeInsets.only(bottom: 20, top: 20),
      child: RichText(
        textAlign: TextAlign.left,
        text: TextSpan(
          text: 'Register form',
          style: TextStyle(color: Colors.black, fontSize: 30)
        ),
      ),
    );
    final inputName = Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hintText: 'Full Name',
          contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0)
          )
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
    final inputUsername = Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hintText: 'Username',
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
        decoration: InputDecoration(
          hintText: 'Password',
          contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0)
          )
        ),
      ),
    );
    final inputConfirmPassword = Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: TextField(
        keyboardType: TextInputType.visiblePassword,
        decoration: InputDecoration(
          hintText: 'Confirm Password',
          contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0)
          )
        ),
      ),
    );
    final inputPhoneNumber = Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: TextField(
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          hintText: 'Phone Number',
          contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0)
          )
        ),
      ),
    );
    final inputAddressName = Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hintText: 'Address Name',
          contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0)
          )
        ),
      ),
    );
    final inputAddress = Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: TextField(
        keyboardType: TextInputType.streetAddress,
        decoration: InputDecoration(
          hintText: 'Address',
          contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0)
          )
        ),
      ),
    );
    final buttonRegisterConfirm = Padding(
      padding: EdgeInsets.only(bottom: 50),
      child: ButtonTheme(
        height: 56,
        child: RaisedButton(
          child: Text('Register Now', style: TextStyle(color: Colors.black, fontSize: 20)),
          color: Color(0xffFDCF09),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50)
          ),
          onPressed: () {
            showDialog(context: context,
            builder: (context){
              return AlertDialog(
                title: Text('Register Confirmation'),
                content: Text('Thank you for the registration, \n\nYour account is confirmed and ready to log in!'),
                actions: <Widget>[
                  FlatButton(
                    child: Text('Confirm'), onPressed: () { Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
                })],
              );
            }
            );
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
              appTitle,
              logo,
              buttonAlreadyClient,
              formTitle,
              inputName,
              inputEmail,
              inputUsername,
              inputPassword,
              inputConfirmPassword,
              inputPhoneNumber,
              inputAddressName,
              inputAddress,
              buttonRegisterConfirm
            ],
          ),
        ),
      )
    );
  }
}