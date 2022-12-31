import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  bool isLast = false;
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xFF2EB62C), Color(0xFF57C84D), Color(0xFF83D475)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(children: [
              // SizedBox(height: 2),
              Container(
                  // height: MediaQuery.of(context).size.height,
                  child: Image.asset(
                'assets/images/4.png',
                // height: 743,
                // width: 300,
                // alignment: Alignment.topCenter,
                fit: BoxFit.cover,
              )),
              Container(
                padding: EdgeInsets.only(top: 450, left: 74),
                child: SafeArea(
                  child: Column(
                    children: [
                      Text(
                        "The Future of Agriculture",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 25),
                      Text(
                        "AgroTech",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              )
            ])
          ]),
    );
  }
}
