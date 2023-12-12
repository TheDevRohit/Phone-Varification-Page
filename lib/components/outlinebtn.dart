import 'package:flutter/material.dart';

Widget OutlineBtn({title  , onTap , icon }){
  return OutlinedButton(
    style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 50),
        shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(20)),
        foregroundColor: Colors.white,
        side: const BorderSide(color: Colors.white)),
    onPressed: onTap,
    child:  Row(
      children: [
        Icon(icon),
        const SizedBox(
          width: 30,
        ),
        Text(title),
      ],
    ),
  );
}