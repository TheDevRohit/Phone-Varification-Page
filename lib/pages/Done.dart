import 'package:flutter/material.dart';

class DonePage extends StatefulWidget {
  const DonePage({super.key});

  @override
  State<DonePage> createState() => _DonePageState();
}

class _DonePageState extends State<DonePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
              Image.asset('assets/images/last.png'),
              Image.asset('assets/images/Vector.png'),
              Text('Mobile verification has successfully done'),
          ],
        ),
      ),
    );
  }
}
