import 'package:flutter/material.dart';

class Error extends StatelessWidget {
  const Error({Key?key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Error 404 Not Found', style: TextStyle(fontSize: 30)),
      ),
    );
  }
}
