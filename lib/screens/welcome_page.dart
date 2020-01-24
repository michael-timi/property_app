import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:property_app/colors.dart';
import 'package:property_app/widget/custom_dialog.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: _width,
        height: _height,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                SizedBox(height: _height * 0.10),
                FlutterLogo(size: 100),
                SizedBox(height: _height * 0.05),
                Text(
                  'Welcome',
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
                SizedBox(height: _height * 0.05),
                AutoSizeText(
                  'Let`s help you secure your dream property in your dream location',
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
                SizedBox(height: _height * 0.15),
                RaisedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) => CustomDialog(
                            title: 'Would you like to create a free account?',
                            description:
                                'With an account, your data will be securely saved, allowing you to access it from multiple devices.',
                            primaryButtonText: 'Create My Account',
                            primaryButtonRoute: '/signUp',
                            secondaryButtonText: 'Maybe Later',
                            secondaryButtonRoute: '/home'));
                  },
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 15.0),
                    child: Text(
                      'Get started',
                      style: TextStyle(
                          color: PrimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),
                ),
                SizedBox(height: _height * 0.05),
                FlatButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('/signIn');
                  },
                  child: Text('Sign In',
                      style: TextStyle(color: Colors.white, fontSize: 25)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
