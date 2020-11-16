import 'dart:ui';
import 'package:codequiz/pages/home-page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class DevelopersPage extends StatefulWidget {
  @override
  _DevelopersPageState createState() => _DevelopersPageState();
}

class _DevelopersPageState extends State<DevelopersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFFCE),
      body: ListView(
        children: [
          Container(
            //  margin: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
                boxShadow: [
                  // BoxShadow(
                  //     color: Colors.grey.withOpacity(0.5),
                  //     spreadRadius: 10,
                  //     blurRadius: 15,
                  //     offset: Offset(0, 7))
                ]),
            child: Stack(
              children: [
                // ClipRRect(
                //   borderRadius: BorderRadius.only(
                //       bottomLeft: Radius.circular(40),
                //       bottomRight: Radius.circular(40)),
                Container(
                  width: MediaQuery.of(context).size.width * 2,
                  height: MediaQuery.of(context).size.height * .4,
                  child: Image.asset(
                    "images/dev.jpg",
                    fit: BoxFit.cover,
                  ),
                ),

                //  Positioned(
                //    child: CircleAvatar(
                //       radius: 40,
                //      backgroundImage: AssetImage("images/logo.jpg"),
                //    ),
                //  ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: IconButton(
                      color: Colors.black,
                      icon: Icon(Icons.arrow_back_ios),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()));
                      }),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xFFf7abb9),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 1.4,
                      blurRadius: 10,
                      offset: Offset(0, 7),
                    )
                  ]),
              margin: EdgeInsets.only(right: 70, left: 70),
              height: 60,
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.developer_board,
                    color: Color(0xFF1c223d),
                    size: 32,
                  ),
                  Text(
                    "Developers",
                    style: TextStyle(
                      color: Color(0xFF4d1d35),
                      fontFamily: "Ubuntu",
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          // Container(
          //   height: 100,
          //   child: Padding(
          //     padding: const EdgeInsets.all(8.0),
          //     child: ListTile(
          //       leading: CircleAvatar(
          //         radius: 30,
          //         backgroundImage: AssetImage("images/arnob1.png"),
          //       ),
          //       title: Text(
          //         "Arnob  Mahmud",
          //         style: TextStyle(
          //             fontFamily: "Ubuntu",
          //             fontSize: 24,
          //             fontWeight: FontWeight.bold,
          //             color: Color(0xFF393949)),
          //       ),
          //       subtitle: Text(
          //         "BSc in Textile Engineering, Bangladesh University of Textiles (BUTEX)",
          //         style: TextStyle(
          //           color: Color(0xFF440544),
          //           fontFamily: "Kufam",
          //           fontSize: 17,
          //         ),
          //       ),
          //       trailing: IconButton(
          //           icon: Icon(
          //             Icons.message_outlined,
          //             color: Color(0xFF504682),
          //           ),
          //           onPressed: () {}),
          //     ),
          //   ),
          // ),
          SizedBox(
            height: 5.0,
          ),
          // Container(
          //   child: Padding(
          //     padding: const EdgeInsets.all(8.0),
          //     child: ListTile(
          //       leading: CircleAvatar(
          //         radius: 30,
          //         backgroundImage: AssetImage("images/munna.jpg"),
          //       ),
          //       title: Text(
          //         "Fahim  Muntashir",
          //         style: TextStyle(
          //             fontFamily: "Ubuntu",
          //             fontSize: 24,
          //             fontWeight: FontWeight.bold,
          //             color: Color(0xFF393949)),
          //       ),
          //       subtitle: Text(
          //         "BSc in Computer Science and Engineering, North South University (NSU)",
          //         style: TextStyle(
          //             color: Color(0xFF440544),
          //             fontFamily: "Kufam",
          //             fontSize: 17),
          //       ),
          //       trailing: IconButton(
          //           icon: Icon(
          //             Icons.message_outlined,
          //             color: Color(0xFF504682),
          //           ),
          //           onPressed: () {}),
          //     ),
          //   ),
          // ),
          SizedBox(
            height: 10,
          ),
          Container(
              child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(
                    FontAwesomeIcons.facebook,
                    color: Colors.blue,
                    size: 40,
                  ),
                  onPressed: _launchFB,
                ),
                IconButton(
                  icon: Icon(
                    FontAwesomeIcons.twitter,
                    color: Colors.blue[400],
                    size: 40,
                  ),
                  onPressed: _launchTwitter,
                ),
                IconButton(
                  icon: Icon(
                    FontAwesomeIcons.linkedin,
                    color: Colors.blueAccent,
                    size: 40,
                  ),
                  onPressed: _launchLinkedIn,
                ),
              ],
            ),
          )),
          SizedBox(
            height: 170,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(
                  text: 'The Geeks of ',
                  style: TextStyle(
                      letterSpacing: 1.6,
                      fontFamily: 'Ubuntu',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF632885).withOpacity(0.7)),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'RippleBee',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

_launchTwitter() async {
  const url = 'https://www.twitter.com/@rippledevs';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchFB() async {
  const url = 'https://www.facebook.com/rippledevs';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchLinkedIn() async {
  const url = 'https://www.linkedin.com/company/ripplebee/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
