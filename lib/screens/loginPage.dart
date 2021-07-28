import 'package:flutter/material.dart';
import 'package:cab_rider/widgets/TaxiButton.dart';
import 'package:cab_rider/brand_colors.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 70,
                ),
                Image(
                  image: AssetImage('images/logo.png'),
                  alignment: Alignment.center,
                  height: 100.0,
                  width: 100.0,
                ),
                SizedBox(
                  height: 40.0,
                ),
                Text(
                  'Sign in as a Rider',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Brand-Bold',
                  ),
                ),
                Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(children: <Widget>[
                      TextField(
                        // controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            labelText: 'Email address',
                            labelStyle: TextStyle(
                              fontSize: 14.0,
                            ),
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 10.0)),
                        style: TextStyle(fontSize: 14),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        // controller: passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(
                              fontSize: 14.0,
                            ),
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 10.0)),
                        style: TextStyle(fontSize: 14),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      TaxiButton(
                        title: 'LOGIN',
                        color: BrandColors.colorGreen,
                        // color: BrandColors.colorGreen,
                        onPressed: () {},
                      ),
                      FlatButton(
                          onPressed: () {},
                          child: Text('Don\'t have an account, sign up here')),
                    ]))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
