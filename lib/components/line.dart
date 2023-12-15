import 'package:flutter/material.dart';

Widget getLine({title}){
  return  Row(
    children: [
      const Expanded(
        child: Divider(
          color: Colors.white,
          thickness: 1.0,
          indent: 0, // Adjust the starting point of the line
          endIndent: 10, // Adjust the ending point of the line
        ),
      ),
      Text(title,style: const TextStyle(color: Colors.white),),
      const Expanded(
        child: Divider(
          color: Colors.white,
          thickness: 1.0,
          indent: 10, // Adjust the starting point of the line
          endIndent: 0, // Adjust the ending point of the line
        ),
      ),
    ],
  );
}