import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DevelopersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            child: Stack(
              children: [
                Image.asset(
                  "images/programming.jpg",
                  fit: BoxFit.cover,
                ),
                Positioned(
                  left: 25,
                  top: 170,
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage("images/rplb.jpg"),
                  ),
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
              alignment: Alignment.center,
              child: Text(
                "Developers",
                style: TextStyle(
                  color: Color(0xFF601852),
                  fontFamily: "Ubuntu",
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("images/arnob.jpg"),
                ),
                title: Text(
                  "Arnob Mahmud",
                  style: TextStyle(
                      fontFamily: "Ubuntu",
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF393949)),
                ),
                subtitle: Text(
                    "BSc in Textile Engineering, Bangladesh University of Textiles (BUTEX)",
                    style: TextStyle(
                        color: Color(0xFF440544),
                        fontFamily: "Ubuntu",
                        fontSize: 16),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.message_outlined), onPressed: () {}),
                ),
                
              ),
            ),

            Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("images/munna.jpg"),
                ),
                title: Text(
                  "Fahim Muntashir",
                  style: TextStyle(
                      fontFamily: "Ubuntu",
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF393949)),
                ),
                subtitle: Text(
                    "BSc in Computer Science and Engineering, North South University (NSU)",
                    style: TextStyle(
                        color: Color(0xFF440544),
                        fontFamily: "Ubuntu",
                        fontSize: 16),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.message_outlined), onPressed: () {}),
                ),
                
              ),
            ),
        ],
      ),
    );
  }
}
