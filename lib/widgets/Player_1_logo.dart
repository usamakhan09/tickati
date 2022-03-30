import 'package:flutter/material.dart';

class PlayerLogo extends StatelessWidget {
  final setcolor;
  final imagepath;
  const PlayerLogo({required this.setcolor, required this.imagepath});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 10),
        height: 91,
        width: 91,
        decoration: BoxDecoration(
          border: Border.all(
              color: Color(setcolor), width: 1.0, style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(20),
          color: Color(setcolor),
        ),
        padding: const EdgeInsets.all(22),
        child: Column(
          children: [
            Image.asset(
              imagepath,
              color: Colors.white,
            ),
          ],
        ));
  }
}
