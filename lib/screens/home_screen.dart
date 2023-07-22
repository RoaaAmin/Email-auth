import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/SnackBar.dart';
import 'login_screen.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          backgroundColor: Colors.amber[900],
        ),
        body: Center(
          child: TextButton(
            onPressed: () async {
              print('Signing Out User...');
              showInSnackBar('Signing Out User...', Colors.red, Colors.white, 2, context, _scaffoldKey);
              try {
                await FirebaseAuth.instance.signOut();
                print('SignOut Completed...');
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (BuildContext context) => LoginScreen(),
                  ),
                );
              } catch (e) {
                print('An error occurred during signing user out.');
              }
            },
            style: TextButton.styleFrom(
              primary: Colors.black, // Color of the text and icon
              textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            child: Text("Logout",
              style: GoogleFonts.roboto(
              color: Colors.black,
              fontSize: 22,
            ),),
          ),
        ),
      );
  }
}
