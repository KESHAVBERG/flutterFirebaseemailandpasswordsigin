import 'package:flutter/material.dart';

class Error extends StatefulWidget {
  @override
  _ErrorState createState() => _ErrorState();
}

class _ErrorState extends State<Error> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.error,
              color: Colors.red,
              size: 50,
            ),
            Text("an error" , style: TextStyle(
              fontSize: 30,
              color: Colors.red
            ),)
          ],
        )),
      ),
    );
  }
}
