import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red[900],
        appBar: AppBar(
          backgroundColor: Colors.grey[600],
          title: Text("I Am Iron Man"),
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/iron_man.png'),
          ),
        ),
      ),
    ));
