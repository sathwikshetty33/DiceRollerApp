// import 'dart:math';

import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State <DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assests/images/1.webp';
  List<String> images = [
    'assests/images/1.webp',
    'assests/images/2.webp',
    'assests/images/3.jpeg',
    'assests/images/4.png',
    'assests/images/5.webp',
    'assests/images/6.jpeg',
  ];
  void roll(){
    setState(() {
      activeDiceImage = images[Random().nextInt(images.length)];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Center(
              child: Image(image: AssetImage(activeDiceImage),width: 200,),
            ),
            SizedBox(height: 20),
            TextButton(onPressed: roll, 
             style: TextButton.styleFrom(
              foregroundColor: Colors.black,
              textStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            child: Text("Click Me !"),),
          ],
        );
  }
}
