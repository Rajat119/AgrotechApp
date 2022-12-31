import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
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
        children: [
          Stack(children: [
            // SizedBox(height: 2),
            Container(
                // height: MediaQuery.of(context).size.height,
                child: Image.asset(
              'assets/images/7.png',
              // height: 743,
              // width: 300,
              // alignment: Alignment.topCenter,
              fit: BoxFit.cover,
            )),
            Container(
              padding: EdgeInsets.only(top: 447, left: 54),
              child: SafeArea(
                child: Column(
                  children: [
                    Text(
                      "Let's Harvest",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            )
          ])
        ],
      ),
    );
  }
}
