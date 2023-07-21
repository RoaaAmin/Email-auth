import 'package:email_auth/screens/home_screen.dart';
import 'package:email_auth/screens/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Auth extends StatelessWidget{
  const Auth({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: ((context, snapshot) {
          if (snapshot.hasData){ // if user already logged in
            return HomeScreen();
            //return LoginScreen();
            // no data else
          } else{
            return LoginScreen();
          }
        }

        )
      ),

     );

}
}