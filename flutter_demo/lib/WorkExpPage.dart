import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WorkExpPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text ("My Education",
          style: TextStyle(
              fontFamily:"Comfortaa",
              fontSize: 20,
              fontWeight:FontWeight.w500,
              color:Colors.greenAccent
          ),
        ),
        backgroundColor: Colors.black12,
      ),
    );
  }
}

