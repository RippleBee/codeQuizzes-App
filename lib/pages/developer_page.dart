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
                  "images/linux.jpg",
                  fit: BoxFit.cover,
                ),
                Positioned(
                  left: 25,
                  top: 160,
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage("images/logo.jpg"),
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
          SizedBox(height: 10,),
          Container(
            height: 100,
            child: Padding(
              padding: const EdgeInsets.all(8.0),

              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("images/arnob.jpeg"),
                ),
                title: Text(
                  "Arnob  Mahmud",
                  style: TextStyle(
                      fontFamily: "Ubuntu",
                      fontSize: 24,
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
            SizedBox(height: 20,),
            Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("images/munna.jpg"),
                ),
                title: Text(
                  "Fahim  Muntashir",
                  style: TextStyle(
                      fontFamily: "Ubuntu",
                      fontSize: 24,
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
                    icon: Icon(Icons.message_outlined), onPressed: () {
                      
                    }),
                ),
                
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("We Are The Geeks of RippleBee ❤️",
                style: TextStyle(
                  color: Color(0xFF122d70),
                  fontSize: 16,
                  fontFamily: "Ubuntu",
                  fontWeight: FontWeight.w700,

                ),)
              ],
            )
        ],
      ),
    );
  }
}
