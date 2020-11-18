import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:home_cleaning_app/constants.dart';
import 'package:home_cleaning_app/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HomeCleaning',
      theme: ThemeData(fontFamily: 'ubuntu'),
      home: IntroScreen(),
      routes: {
        '/HomeScreen': (context) => HomeScreen(),
      },
    );
  }
}

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purple,
      body: Column(
        children: [
          Container(
            width: 100,
            height: 50,
            margin: EdgeInsets.only(top: 40),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/logo.png'),
              ),
            ),
          ),
          SizedBox(height: 30),
          Text(
            "Clean Home\nClean Life",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.w900,
            ),
          ),
          SizedBox(height: 30),
          Text(
            "Book Cleans At The Comfort \nOf Your Home",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 60),
          Container(
            height: 350,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/splash.png'),
              ),
            ),
          ),
          Expanded(child: Container()),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: openMainPage,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 30),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                    ),
                  ),
                  child: Text(
                    "Continue..",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: purple),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  void openMainPage() {
    Navigator.pushNamed(context, '/HomeScreen');
  }
}
