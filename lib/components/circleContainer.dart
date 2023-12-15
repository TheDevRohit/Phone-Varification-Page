import 'package:flutter/material.dart';

Widget circleBox(){
  return Container(
    margin: EdgeInsets.only(right: 10,top: 20),
    height: 50,
    width: 50,
    decoration: BoxDecoration(
      color: Colors.black,
      borderRadius: BorderRadius.circular(50),
    ),
   );
}