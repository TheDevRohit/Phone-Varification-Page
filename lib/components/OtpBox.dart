import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget OtpBox({controller}){
  return Container(
    height: 50,
    width: 50,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
    ),
    child: Padding(
      padding: const EdgeInsets.only(bottom:10,left: 4),
      child: TextField(
          enabled: true,
          textAlign: TextAlign.center,
          showCursor: false,
          keyboardType: TextInputType.number,
          controller: controller,
           decoration: const InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
            )
        ),
      ),
    ),
  );
}