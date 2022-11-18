import 'dart:async';

import 'package:flutter/material.dart';
import 'package:salufit/src/Rutinas1.dart';


class Imagenes1 extends StatefulWidget {
  const Imagenes1({super.key});

  @override
  State<Imagenes1> createState() => _Imagenes1State();
}

class _Imagenes1State extends State<Imagenes1> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 232, 232, 232),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 60.0),
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              Text(
                'Tijeras 30 reps',
                style: TextStyle(
                    fontFamily: 'Dangrek-Regular',
                    fontSize: 30.0,
                    color: Color.fromARGB(221, 0, 0, 0)),
              ),
             Image(image: AssetImage('images/tijeras.jpg')

              ),
              Divider(
                height: 15.0,
                thickness: 2.0,
                color: Color.fromARGB(221, 0, 0, 0),
              ),
              Text(
                'Plancha 60 segs',
                style: TextStyle(
                    fontFamily: 'Dangrek-Regular',
                    fontSize: 30.0,
                    color: Color.fromARGB(221, 0, 0, 0)),
              ),
             Image(image: AssetImage('images/plancha.png')
              
              ),
              Divider(
                height: 15.0,
                thickness: 2.0,
                color: Color.fromARGB(221, 0, 0, 0),
              ),
              Text(
                'Zancada en sofa 45 segs',
                style: TextStyle(
                    fontFamily: 'Dangrek-Regular',
                    fontSize: 30.0,
                    color: Color.fromARGB(221, 0, 0, 0)),
              ),
             Image(image: AssetImage('images/Zancada.jpg')
              
              ),

              Divider(
                height: 15.0,
                thickness: 2.0,
                color: Color.fromARGB(221, 0, 0, 0),
              ),
              Text(
                'Rodillas al pecho 60 reps',
                style: TextStyle(
                    fontFamily: 'Dangrek-Regular',
                    fontSize: 30.0,
                    color: Color.fromARGB(221, 0, 0, 0)),
              ),
             Image(image: AssetImage('images/Rodillas.png')
              
              ),
               Divider(
                height: 20.0,
                thickness: 2.0,
                color: Color.fromARGB(221, 0, 0, 0),
              ),
                SizedBox(
                child: TextButton(

                    // aqui se hace la funiconalidad del boton
                    onPressed: () {

                      final route = MaterialPageRoute(
                        builder: (context) => Rutinas1(),
                      );
                      Navigator.push(context, route);
                    },
                    child: Text('Volver',
                        style: TextStyle(
                            fontSize: 25.0,
                            color: Color.fromARGB(255, 0, 0, 0),
                            backgroundColor: Color.fromARGB(255, 104, 195, 1),
                            fontFamily: 'Dangrek-Regular'))),
              ),
            ],
          )
        ],
      ),
    );
  }
}
