import 'package:flutter/material.dart';

class Withdrawdia extends StatelessWidget {
  Withdrawdia({Key? key}) : super(key: key);
  var crosscolor = 0xFF0D47A1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(crosscolor),
        ),
        child: Center(
          child: Image.asset(
            "assets/images/pngwing.png",
          ),
        ),
      ),
    );
  }
}
