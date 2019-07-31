import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:intro_page_layout/widgets/custom_dialog.dart';

class FirstView extends StatelessWidget {
  final primaryColor = Color(0xFF75A2EA);

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: _width,
        height: _height,
        color: primaryColor,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                SizedBox(height: _height * 0.10),
                Text(
                  'Welcome',
                  style: TextStyle(fontSize: 44, color: Colors.white),
                ),
                SizedBox(height: _height * 0.10),
                AutoSizeText(
                  "Let's start planning your next trip",
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
                SizedBox(height: _height * 0.15),
                RaisedButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 10, left: 30, right: 30),
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                          color: primaryColor,
                          fontSize: 28,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
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
                        secondaryButtonRoute: '/home',
                      ),
                    );
                  },
                ),
                SizedBox(height: _height * 0.05),
                FlatButton(
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
