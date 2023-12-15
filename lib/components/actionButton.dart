import 'package:flutter/material.dart';

Widget actionBtn({icon , onTap}){
  return  InkWell(
    onTap: onTap,
    child: Container(
        height: 35,
        width: 35,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Icon(icon,size: 23,)),
  );
}