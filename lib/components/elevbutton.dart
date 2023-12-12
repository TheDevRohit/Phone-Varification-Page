import 'package:flutter/material.dart';

Widget ElevatedBtn({String ? title , onTap}){
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 50),
        backgroundColor: Colors.yellowAccent,
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)),
      ),
      onPressed: onTap,
      child:  Text(title!,
        style: const TextStyle(fontSize: 16),
      ));
}