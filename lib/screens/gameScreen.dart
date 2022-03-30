import 'package:flutter/material.dart';
import 'package:tickati/model/winnerlist.dart';
import 'package:tickati/screens/WinDialoag.dart';
import 'package:tickati/screens/leaderboard.dart';
import 'package:tickati/widgets/upperBar.dart';
import 'package:tickati/widgets/withdrawtitle.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool afterwin = false;
  var crosscolor = 0xFF0D47A1;
  var zerocolor = 0xFF42A5F5;
  var cross = "assets/images/cross.png";
  var zero = "assets/images/zero.png";
  List<String> hold = ["", "", "", "", "", "", "", "", ""];
  late List<Myclass> win = [];
  var choice = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Upperbar(),
          Container(
            height: MediaQuery.of(context).size.height - 455,
            width: MediaQuery.of(context).size.width - 60,
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.white)),
            child: GridView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                itemCount: 9,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      changeSymbol(index);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                        color: const Color(0x33C1C1C1),
                      )),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (hold[index].isEmpty) Text(hold[index]),
                          if (hold[index] == cross)
                            Image.asset(
                              hold[index],
                              color: Color(crosscolor),
                            ),
                          if (hold[index] == zero)
                            Image.asset(
                              hold[index],
                              color: Color(zerocolor),
                            ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
          Expanded(
            flex: 4,
            child: Container(),
          ),
          Container(
            padding: const EdgeInsets.all(30),
            child: Row(
              children: [
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Color(crosscolor),
                            width: 1.0,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(100),
                        color: Color(crosscolor),
                      ),
                      width: 170,
                      height: 50,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) => Leaderboard(win)));
                          });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/images/threelines.png",
                              height: 20,
                              width: 23,
                              color: Colors.white,
                              fit: BoxFit.contain,
                            ),
                            const Text(
                              " Leader board",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                            Expanded(child: Row())
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
                IconButton(
                  onPressed: reset,
                  icon: const Icon(Icons.refresh),
                  iconSize: 40,
                  color: Color(crosscolor),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  void changeSymbol(int index) {
    if (afterwin != true) {
      if (hold[index] == zero || hold[index] == cross) {
        return;
      } else {
        setState(() {
          if (choice == false && hold[index] == "") {
            hold[index] = zero;
          } else if (choice == true && hold[index] == "") {
            hold[index] = cross;
          }
          choice = !choice;
          checkWinner();
        });
      }
    }
  }

  void checkWinner() {
    if (hold[0] == hold[1] && hold[0] == hold[2] && hold[0] != "") {
      winnerdialog(checplayer(hold[0]));
      afterwin = true;
    } else if (hold[3] == hold[4] && hold[3] == hold[5] && hold[3] != "") {
      winnerdialog(checplayer(hold[3]));
      afterwin = true;
    } else if (hold[6] == hold[8] && hold[6] == hold[7] && hold[6] != "") {
      winnerdialog(checplayer(hold[6]));
      afterwin = true;
    } else if (hold[0] == hold[3] && hold[0] == hold[6] && hold[0] != "") {
      winnerdialog(checplayer(hold[0]));
      afterwin = true;
    } else if (hold[1] == hold[4] && hold[1] == hold[7] && hold[1] != "") {
      winnerdialog(checplayer(hold[1]));
      afterwin = true;
    } else if (hold[2] == hold[8] && hold[2] == hold[5] && hold[2] != "") {
      winnerdialog(checplayer(hold[2]));
      afterwin = true;
    } else if (hold[0] == hold[4] && hold[0] == hold[8] && hold[0] != "") {
      winnerdialog(checplayer(hold[0]));
    } else if (hold[2] == hold[4] && hold[2] == hold[6] && hold[2] != "") {
      winnerdialog(checplayer(hold[2]));
      afterwin = true;
    } else if (hold[0] != "" &&
        hold[1] != "" &&
        hold[2] != "" &&
        hold[3] != "" &&
        hold[4] != "" &&
        hold[5] != "" &&
        hold[6] != "" &&
        hold[7] != "" &&
        hold[8] != "") {
      winnerdialog(checplayer(hold));
    }
  }

  int checplayer(var hold) {
    // print(hold);
    if (hold == "assets/images/cross.png") {
      return 2;
    } else if (hold == "assets/images/zero.png") {
      return 1;
    }
    return 0;
  }

  void reset() {
    setState(() {
      hold = ["", "", "", "", "", "", "", "", ""];
      afterwin = false;
    });
  }

  void winnerdialog(int num) {
    win.add(Myclass(num));
    if (num != 0) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              backgroundColor: Colors.transparent,
              actions: [WinnerTitle(player: num)],
            );
          });
    } else {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              actions: [
                Withdrawdia(),
              ],
            );
          });
      // reset();
    }
  }
}
