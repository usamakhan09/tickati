import 'package:flutter/material.dart';

class Wincard extends StatelessWidget {
  var crosscolor = 0xFF0D47A1;
  var zerocolor = 0xFF42A5F5;
  late var sign;
  int playernum = 0;
  Wincard(this.playernum, this.sign);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      width: MediaQuery.of(context).size.width - 35,
      height: 88,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xFFF1F1F1)),
      child: Center(
        child: Row(
          children: [
            if (playernum == 1)
              Container(
                  padding: const EdgeInsets.only(left: 24),
                  child: Image.asset(
                    sign,
                    color: Color(zerocolor),
                    scale: 2,
                  )),
            if (playernum == 2)
              Container(
                  padding: const EdgeInsets.only(left: 24),
                  child: Image.asset(
                    sign,
                    color: Color(crosscolor),
                    scale: 2,
                  )),
            if (playernum == 0)
              Container(
                  width: 60,
                  height: 60,
                  padding: const EdgeInsets.only(left: 24),
                  child: Image.asset(
                    sign,
                    color: Colors.deepPurpleAccent,
                    scale: 1,
                  )),
            if (playernum != 0)
              Container(
                  margin: const EdgeInsets.only(left: 23),
                  child: Text(
                    "Player $playernum",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  )),
            if (playernum == 0)
              Container(
                  margin: const EdgeInsets.only(left: 23),
                  child: Text(
                    "Withdraw",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  )),
            Expanded(child: Container()),
            Image.asset(
              "assets/images/trophy1.png",
              scale: 8,
            ),
            const SizedBox(
              width: 23,
            )
          ],
        ),
      ),
    );
  }
}
