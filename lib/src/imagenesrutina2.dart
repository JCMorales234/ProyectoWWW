import 'dart:async';

import 'package:flutter/material.dart';
import 'package:salufit/src/Rutinas1.dart';


class Imagenes2 extends StatefulWidget {
  const Imagenes2({super.key});

  @override
  State<Imagenes2> createState() => _Imagenes2State();
}

class _Imagenes2State extends State<Imagenes2> {
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
                'Flexiones 10 repes',
                style: TextStyle(
                    fontFamily: 'Dangrek-Regular',
                    fontSize: 30.0,
                    color: Color.fromARGB(221, 0, 0, 0)),
              ),
             Image(image: AssetImage('images/Flexiones.png')

              ),
              Divider(
                height: 15.0,
                thickness: 2.0,
                color: Color.fromARGB(221, 0, 0, 0),
              ),
              Text(
                'Sentadillas 30 reps',
                style: TextStyle(
                    fontFamily: 'Dangrek-Regular',
                    fontSize: 30.0,
                    color: Color.fromARGB(221, 0, 0, 0)),
              ),
             Image(image: AssetImage('images/sentadilla.png')
             ),
              Divider(
                height: 15.0,
                thickness: 2.0,
                color: Color.fromARGB(221, 0, 0, 0),
              ),
              Text(
                'Estiramiento de abdominales 30 seg',
                style: TextStyle(
                    fontFamily: 'Dangrek-Regular',
                    fontSize: 22.0,
                    color: Color.fromARGB(221, 0, 0, 0)),
              ),
             Image(image: AssetImage('images/Estiramiento.png')
              
              ),

              Divider(
                height: 15.0,
                thickness: 2.0,
                color: Color.fromARGB(221, 0, 0, 0),
              ),
              Text(
                'Escaladores 10 reps',
                style: TextStyle(
                    fontFamily: 'Dangrek-Regular',
                    fontSize: 30.0,
                    color: Color.fromARGB(221, 0, 0, 0)),
              ),
             Image(image: AssetImage('images/Escaladores.png')
              
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
