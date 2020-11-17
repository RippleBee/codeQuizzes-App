import 'package:codequiz/pages/home-page.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF442C3E),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 130,
            width: 300,
            child: Center(
              child: Text(
                'Test  your  programming  and  coding  skills  with  quizzes  and  prepare  yourself for  the  job  interview! ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Lato',
                    letterSpacing: 1.3,
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  height: 83,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFF442C3E).withOpacity(0.1),
                          spreadRadius: 10,
                          blurRadius: 15,
                          offset: Offset(5, 3))
                    ],
                    //   spreadRadius: 10,
                    //     blurRadius: 15,
                    //     offset: Offset(0, 7)),
                    color: Color(0xFFf7e1ed),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: InkWell(
                        child: Text(
                          'Start Quiz',
                          style: TextStyle(
                            fontFamily: 'Ubuntu',
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                            color: Color(0xFF442C3E),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyHomePage()));
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
