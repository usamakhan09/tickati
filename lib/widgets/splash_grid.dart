import 'package:flutter/material.dart';

class Splashgrid extends StatelessWidget {
  const Splashgrid();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Container(
          color: const Color(0xFF0D47A1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 66),
                    child: Text("KATI ZERO",
                        style: TextStyle(
                            fontSize: 35,
                            color: Colors.white,
                            fontWeight: FontWeight.w400)),
                  ),
                  // const SizedBox(height:220 ,),
                  Expanded(child: Container()),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/zero.png',
                      ),
                      Image.asset(
                        'assets/images/zero.png',
                      ),
                      Image.asset('assets/images/cross.png'),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset('assets/images/zero.png'),
                      Image.asset('assets/images/cross.png'),
                      Image.asset('assets/images/cross.png'),
                    ],
                  ),
                  // const Text("hello world")
                ],
              ),
            ],
          ),
        )),
        Expanded(
            child: Container(
          padding: const EdgeInsets.only(left: 10),
          color: const Color(0xFF42A5F5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/cross.png',
                        color: const Color(0xFF0D47A1),
                      ),
                      Image.asset('assets/images/zero.png',
                          color: const Color(0xFF0D47A1)),
                      Image.asset('assets/images/zero.png',
                          color: const Color(0xFF0D47A1)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 256),
                    child: Column(
                      children: const [
                        Text(
                          "POWERED BY",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Poppins"),
                        ),
                        //
                        Text(
                          "TECH IDARA",
                          style: TextStyle(
                              fontSize: 25,
                              color: Color(0xFF0D47A1),
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        )),
      ],
    );
  }
}
