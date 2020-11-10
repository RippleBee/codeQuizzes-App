import 'package:codequiz/database/temp_db.dart';
import 'package:flutter/material.dart';
import 'package:codequiz/pages/developer_page.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePage createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF442C2E),
        title: Text(
          'CodeQuiz',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontFamily: 'Ubuntu',
          ),
        ),
        centerTitle: true,
        elevation: 19,
        actions: [
          IconButton(
              icon: Icon(Icons.arrow_forward_ios),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DevelopersPage()));
              })
        ],
      ),
      body: Container(
        color: Color(0xFFFCFFDB),
          child: SafeArea(
            child: Builder(
              builder: (BuildContext context) => Container(
                child: ListView(
                  children: [
                    Container(
                      child: Center(
                        child: Image.asset(
                          'images/coder.png',
                          height: 300,
                          width: 300,
                        ),
                      ),
                    ),
                    question(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        preQuestion(),
                        chechkAnswerTrue(context),
                        checkAnswerFalse(context),
                        nextQuestion(),
                      ],
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          )),
    );
  }

// <<<==========   QUESTION BOX ==========>>>

  Padding question() {
    return Padding(
      padding: EdgeInsets.only(top: 8, left: 30, right: 30, bottom: 38),
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                offset: Offset(3, 5),
                blurRadius: 18,
                color: Color(0xFFb3635b),
                spreadRadius: 2,
              )
            ],
            color: Color(0xFFb3635b),
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(
              //   style: BorderStyle.solid,
              color: Color(0xFFb3635b),
            )),
        height: 140.0,
        child: Center(
            child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            questionBank[_currentIndex % questionBank.length].questionText,
            style: TextStyle(
              fontFamily: 'Ubuntu',
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        )),
      ),
    );
  }

// <<<==========  PRE QUESTION  ==========>>>

  Container preQuestion() {
    return Container(
      height: 40,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: Offset(5, 6),
              blurRadius: 10,
              color: Color(0xFFA0766E),
              spreadRadius: 2,
            )
          ],
          borderRadius: BorderRadius.circular(0.0),
          border: Border.all(
            // style: BorderStyle.solid,
            color: Colors.white24,
          )),
      child: RaisedButton(
        color: Color(0xFF494b68),
        onPressed: () {
          setState(() {
            _currentIndex--;
          });
        },
        child: Icon(
          Icons.arrow_left,
          color: Colors.white,
        ),
      ),
    );
  }

// <<<==========  TRUE ANSWER  ==========>>>

  Container chechkAnswerTrue(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                offset: Offset(2, 5),
                blurRadius: 10,
                color: Color(0xFFA0766E),
                spreadRadius: 2)
          ],
          borderRadius: BorderRadius.circular(0.0),
          border: Border.all(
            //  style: BorderStyle.solid,
            color: Colors.white24,
          )),
      child: Container(
        child: RaisedButton(
          color: Color(0xFF494b68),
          onPressed: () => _checkAnswer(true, context),
          child: Text(
            'TRUE',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

// <<<========== FALSE ANSWER  ==========>>>
  Container checkAnswerFalse(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                offset: Offset(2, 5),
                blurRadius: 10,
                color: Color(0xFFA0766E),
                spreadRadius: 2)
          ],
          borderRadius: BorderRadius.circular(0.0),
          border: Border.all(
            //  style: BorderStyle.solid,
            color: Colors.white24,
          )),
      child: RaisedButton(
        color: Color(0xFF494b68),
        onPressed: () => _checkAnswer(false, context),
        child: Text(
          'FALSE',
          style: TextStyle(
            color: Colors.white,
            fontSize: 19.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

//  <<<========== NEXT QUESTION  ==========>>>

  Container nextQuestion() {
    return Container(
      height: 40,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                offset: Offset(2, 5),
                blurRadius: 10,
                color: Color(0xFFA0766E),
                spreadRadius: 2)
          ],
          borderRadius: BorderRadius.circular(0.0),
          border: Border.all(
            //  style: BorderStyle.solid,
            color: Colors.white24,
          )),
      child: RaisedButton(
          color: Color(0xFF494b68),
          onPressed: () {
            setState(() {
              _currentIndex++;
            });
          },
          child: Icon(
            Icons.arrow_right,
            color: Colors.white,
          )),
    );
  }

// <<<==========  STATE CHECK (ANSWER ANALYSIS SECTION)  ==========>>>

  _checkAnswer(bool ansChoice, BuildContext context) {
    if (ansChoice == questionBank[_currentIndex].isCorrect) {
      setState(() {
        _currentIndex = (_currentIndex + 1) % questionBank.length;
      });
      debugPrint('yes correct');
      final snackBar = SnackBar(
        backgroundColor: Color(0xFF2a710b),
        duration: Duration(milliseconds: 500),
        content: Text('Correct',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      );
      Scaffold.of(context).showSnackBar(snackBar);
    } else {
      debugPrint('incorrect');
      final snackBar = SnackBar(
        backgroundColor: Color(0xFFd31d00),
        duration: Duration(milliseconds: 500),
        content: Text('Wrong',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
      );
      Scaffold.of(context).showSnackBar(snackBar);
    }
  }
}
