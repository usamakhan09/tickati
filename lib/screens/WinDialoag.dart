import 'package:flutter/material.dart';

class WinnerTitle extends StatelessWidget {
  late int player = 0;
  WinnerTitle({Key? key, required this.player}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xFF0D47A1),
          borderRadius: BorderRadius.circular(30)),
      width: MediaQuery.of(context).size.width - 50,
      height: MediaQuery.of(context).size.height - 330,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/trophy1.png',
            alignment: Alignment.center,
            width: 212,
            height: 212,
          ),
          Text(
            "Player $player",
            style: const TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400),
          ),
          const Text(
            "WON",
            style: TextStyle(
                color: Colors.white, fontSize: 40, fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}
