import 'package:codequiz/model/question.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'model/question.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: CodeQuiz(),
    );
  }
}

class CodeQuiz extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<CodeQuiz> {
  int _currentIndex = 0;

  List questionBank = [
    Question.name(
        'Only character or integer can be used in switch statement', false),
    Question.name('The return type of malloc function is void.', false),
    Question.name('define is known as preprocessor compiler directive.', true),
    Question.name('Algorithm is the graphical representation of logic.', false),
    Question.name(
        'sizeof( ) is a function that returns the size of a variable.', false),
    Question.name(
        'It is necessary that a loop counter must only be an int. It cannot be a float.',
        false),
    Question.name(
        'The ++ operator increments the operand by 1, whereas, the -- operator decrements it by 1.',
        true),
    Question.name(
        'A zero value is considered to be false and a non-zero value is considered to be true.',
        true),
    Question.name(
        '= is used for comparison, whereas, == is used for assignment of two quantities.',
        false),
    Question.name(
        'Blank spaces may be inserted between two words to improve the readability of the statement.',
        true),
    Question.name('The keywords cannot be used as variable names.', true),
    Question.name('continue keyword skip one iteration of loop?', true),
    Question.name(
        'Switch statement can have any number of case instances', true),
    Question.name(
        'Two case constants within the same switch statement can have the same value.',
        false),
    Question.name(
        'ferror( ) reports any error that might have occurred during a read/write operation on a file.',
        true),
    Question.name(
        'A file opened for writing already exists its contents would be overwritten',
        true),
    Question.name('Structure is collection of dissimilar data types.', true),
    Question.name(
        'A do-while loop is used to ensure that the statements within the loop are executed at least twice.',
        false),
    Question.name('In Java arrays are Objects.', true),
    Question.name(
        'Passing an array in method , the method receives it as the reference of that array.',
        true),
    Question.name(
        'Names of functions in two different files linked together must be unique.',
        true),
    Question.name(
        'If return type for a function is not specified, it defaults to int',
        true),
    Question.name(
        'printf("\\n"); statement can print "\n" on the screen', true),
    Question.name('Structure is collection of dissimilar data types.', false),
    Question.name(
        'C99 standard guarantees uniqueness of 12 characters for external names.',
        false),
    Question.name(
        ' % operators has its associativity from right to left.', false),
    Question.name(
        'The conversion characters d, i, o, u, and x may be preceded by h in scanf() to indicate A pointer to long',
        false),
    Question.name('An array named B in row 7 column 3 stored B[7,3].', false),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      // backgroundColor: Colors.red[50],
      body: buildBody(),
    );
  }

  Container buildBody() {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xFFf0b4d5), Color(0xFFf7e3a1)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight)),
      child: SafeArea(
        child: Builder(
          builder: (BuildContext context) => Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                avatar(),
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
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Color(0xFFaf5b4e),
      title: Text(
        'CodeQuiz',
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      elevation: 19,
    );
  }

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
          onPressed: () => _nextQuestion(),
          child: Icon(
            Icons.arrow_right,
            color: Colors.white,
          )),
    );
  }

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
        onPressed: () => _preQuestion(),
        child: Icon(
          Icons.arrow_left,
          color: Colors.white,
        ),
      ),
    );
  }

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

  Container avatar() {
    return Container(
     /* decoration: BoxDecoration(
        boxShadow: 
        [
        BoxShadow(
            offset: Offset(2,3),
            blurRadius: 50000,
            color: Colors.grey,
            spreadRadius: 1,
          ),
        ],
      ), */
        child: Center(
        child: Image.asset(
          'images/coder.png',
          height: 300,
          width: 300,
        ),
      ),
    );
  }

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

  _nextQuestion() {
    setState(() {
      _currentIndex++;
    });
  }

  _preQuestion() {
    setState(() {
      _currentIndex--;
    });
  }
}
