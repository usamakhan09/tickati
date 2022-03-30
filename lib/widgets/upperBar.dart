import 'package:flutter/material.dart';

import 'Player_1_logo.dart';

class Upperbar extends StatelessWidget {
  var crosscolor = 0xFF0D47A1;
  var zerocolor = 0xFF42A5F5;
  Upperbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50, bottom: 50.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              PlayerLogo(
                imagepath: "assets/images/zero.png",
                setcolor: zerocolor,
              ),
              const Text("Player 1",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600))
            ],
          ),
          const Text(
            "   VS   ",
            style: TextStyle(
                color: Color(0xFFDBDBDB),
                fontSize: 40,
                fontWeight: FontWeight.w700),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              PlayerLogo(
                imagepath: "assets/images/cross.png",
                setcolor: crosscolor,
              ),
              const Text(
                "Player 2",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              )
            ],
          )
        ],
      ),
    );
  }
}
