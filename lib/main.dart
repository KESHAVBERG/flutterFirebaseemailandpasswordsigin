import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:loginsigup/pages/error.dart';
import 'package:loginsigup/pages/loading.dart';
import 'package:loginsigup/pages/login.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization =  Firebase.initializeApp();
  // This widget is the root of your application.


  //MediaQuery.of() called with a context that does not contain a MediaQuery.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
        builder: (context , snapshot){
      if (snapshot.hasError){
        return MaterialApp(
debugShowCheckedModeBanner: false,
          home: Error(),
        );
      }

      if(snapshot.connectionState == ConnectionState.done){
        return MaterialApp(
          debugShowCheckedModeBanner: false,

          home: Login(),
        );
      }
      return MaterialApp(
        debugShowCheckedModeBanner: false,

        home: Loading(),
      );
    }
    );
  }
}

