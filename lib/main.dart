import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:untitled/onboardingPage.dart';
import 'package:untitled/screens/home_screen.dart';
import '../login/register.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../login/signin.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const Open());
}

DatabaseReference userRef =
    // ignore: deprecated_member_use
    FirebaseDatabase.instance.reference().child("users");

class Open extends StatelessWidget {
  static const String idScreen = " Open";
  const Open({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme:
              GoogleFonts.josefinSansTextTheme(Theme.of(context).textTheme),
          visualDensity: VisualDensity.adaptivePlatformDensity),
      initialRoute: 'OnboardingPage',
      routes: {
        // Loginpage.idScreen:(context) => Loginpage(),
        // MainScreen.idScreen:(context) => MainScreen(),
        'OnboardingPage': (context) => OnboardingPage(),
        'signin': (context) => Loginpage(),
        'register': (context) => Register(),
        'home_screen': (context) => home_screen()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
