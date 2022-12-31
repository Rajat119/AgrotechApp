
import 'package:untitled/login/signin.dart';

import '../screens/onboarding/Page1.dart';
import '../screens/onboarding/Page2.dart';
import '../screens/onboarding/Page3.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
 final PageController _controller = PageController();
  bool isLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              isLastPage = index == 2;
            });
          },
          children: const [Page1(), Page2(), Page3()]),
      bottomSheet: isLastPage
          ? Container(
              height: 80,
              padding: const EdgeInsets.symmetric(horizontal: 127.8),
              child: TextButton(
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2)),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.teal.shade700,
                    maximumSize: const Size.fromHeight(80)),
                child: const Text("Get Started",
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                onPressed: () async {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => Loginpage()));
                },
              ),
            )
          : Container(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {
                        _controller.jumpToPage(2);
                      },
                      child: const Text(
                        "Skip",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.green),
                      )),
                  Center(
                      child: SmoothPageIndicator(
                    controller: _controller,
                    count: 3,
                    effect: WormEffect(
                        spacing: 16,
                        dotColor: Colors.black26,
                        activeDotColor: Colors.teal.shade700),
                    onDotClicked: ((index) => _controller.animateToPage(index,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn)),
                  )),
                  TextButton(
                      onPressed: () {
                        _controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                      },
                      child: const Text(
                        "Next",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.green),
                      ))
                ],
              )),
    );
  }
}
