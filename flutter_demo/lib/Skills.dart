
import 'package:flutter/material.dart';

class Skills extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text ("My Skills",
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