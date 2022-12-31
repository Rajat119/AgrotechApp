import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xFF2EB62C),
          Color(0xFF57C84D),
          Color(0xFF83D475)
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Stack(children: [
              // SizedBox(height: 2),
              Container(
                  // height: MediaQuery.of(context).size.height,
                  child: Image.asset(
                'assets/images/3.png',
                // height: 743,
                // width: 300,
                // alignment: Alignment.topCenter,
                fit: BoxFit.cover,
              )),
              Container(
                padding: EdgeInsets.only(top: 534, left: 14),
                child: SafeArea(
                  child: Column(
                    children: [
                      Text(
                        "Plant  .  Water  .  Grow",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              )
            ])
          ],
        ),
      ),
    );
  }
}
