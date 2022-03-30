import 'package:flutter/material.dart';
import 'package:tickati/model/winnerlist.dart';
import 'package:tickati/widgets/wincard.dart';

class Leaderboard extends StatelessWidget {
  List<Myclass> win = [];
  Leaderboard(this.win, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // win.forEach((element) {print(element.playernum);});
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.arrow_back_ios_rounded,
                        color: Color(0xFF000000), size: 20.0)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 11.0),
                      child: Text(
                        'L E A D E R',
                        style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFF0D47A1),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      "B O A R D",
                      style: TextStyle(
                          fontSize: 25,
                          color: Color(0xFF0D47A1),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: win.length,
                itemBuilder: (BuildContext childctx, int e) {
                  return Wincard(win[e].playernum, win[e].check());
                }),
          ),
        ],
      ),
    );
  }
}
