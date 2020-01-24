import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:property_app/colors.dart';

enum AuthFormType { signIn, signUp }

class SignUpView extends StatefulWidget {
  final AuthFormType authFormType;

  SignUpView({Key key, this.authFormType}) : super(key: key);

  @override
  _SignUpViewState createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  AuthFormType authFormType;

  _SignUpViewState({this.authFormType});

  final formKey = GlobalKey<FormState>();
  String _email, _password;

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        color: PrimaryColor,
        height: _height,
        width: _width,
        child: SafeArea(
            child: Column(
          children: <Widget>[
            SizedBox(height: _height * 0.05),
            AutoSizeText(
              'SignUp ',
              maxLines: 1,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 35,
                color: Colors.white,
              ),
            ),
            SizedBox(height: _height * 0.05),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: formKey,
                child: Column(
                  children: buildInputs(),
                ),
              ),
            )
          ],
        )),
      ),
    );
  }

  List<Widget> buildInputs() {
    List<Widget> textFields = [];

    //if were in the sign up state add name

    //add email & password
    textFields.add(TextFormField(
      style: TextStyle(
        fontSize: 22.0,
      ),
      decoration: buildSignUpInputDecoration('Email'),
      onSaved: (value) => _email = value,
    ));
    textFields.add(SizedBox(
      height: 20.0,
    ));
    textFields.add(TextFormField(
      style: TextStyle(
        fontSize: 22.0,
      ),
      decoration: buildSignUpInputDecoration('Password'),
      onSaved: (value) => _password = value,
    ));
    return textFields;
  }

  InputDecoration buildSignUpInputDecoration(String hint) {
    return InputDecoration(
      hintText: hint,
      filled: true,
      fillColor: Colors.white,
      focusColor: Colors.white,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white, width: 0.0),
      ),
      contentPadding:
          const EdgeInsets.only(left: 14.0, bottom: 10.0, top: 10.0),
    );
  }
}
