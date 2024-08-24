// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Auth.dart';
import'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_1/login2.dart';
import 'package:flutter_application_1/signup2.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: Auth(),
      // important for sign up with firebase
     routes: {
          "/" :(context) => Auth(),
        "logIN":(context) => LogInPage(),
        "Signup":(context) => SignUpPage(),
      },
    );
  }
}
