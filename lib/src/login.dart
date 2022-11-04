import 'package:flutter/material.dart';

class Mylogin extends StatefulWidget {
  const Mylogin({super.key});

  @override
  State<Mylogin> createState() => _MyloginState();
}

class _MyloginState extends State<Mylogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color.fromARGB(255, 41, 61, 118),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 30.0,
          vertical: 60.0
        ),
        children: <Widget> [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100.0,
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
                backgroundImage: AssetImage('images/Logoapp.jpg'),
              ),
              Text(
                'Usuario',
                style: TextStyle(
                  fontFamily: 'Dangrek-Regular',
                  fontSize: 50.0,
                  color: Colors.black87
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}