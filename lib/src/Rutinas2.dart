import 'dart:async';

import 'package:flutter/material.dart';
import 'package:salufit/src/imagenesrutina1.dart';
import 'package:salufit/src/imagenesrutina2.dart';
import 'package:salufit/src/menu.dart';
import 'package:salufit/src/login.dart';

class Rutinas2 extends StatefulWidget {
  const Rutinas2({super.key});

  @override
  State<Rutinas2> createState() => _Rutinas2State();
}

class _Rutinas2State extends State<Rutinas2> {
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
              CircleAvatar(
                radius: 100.0,
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
                backgroundImage: AssetImage('images/Logoapp.jpg'),
              ),
              Text(
                'Hola, segun nuestros calculos de tu indice de masa muscular te recomendamos los siguientes ejercicios',
                style: TextStyle(
                    fontFamily: 'Dangrek-Regular',
                    fontSize: 18.0,
                    color: Color.fromARGB(221, 0, 0, 0)),
              ),
              Divider(
                height: 15.0,
              ),
             Text(
                '-Flexiones 10 repeticiones \n -Sentadillas 30 repeticiones \n -Estiramiento de abdominales 30 segundos \n -Escaladores 10 repeticiones  ',
                style: TextStyle(
                    fontFamily: 'Dangrek-Regular',
                    fontSize: 18.0,
                    color: Color.fromARGB(221, 0, 0, 0)),
              ),
                   Divider(
                height: 15.0,
              ),
             Text(
                'Recomendaciones \n -Es recomendable hacer entre 3 a 4 sets de repeticiones de toda la rutina \n - Se recomienda tomar intervalos de 30 segundos a 1 minuto de descanso \n -Todos la rutina de ejercicios se puede realizar en casa \n -En caso de no poder realizar algun ejercicio completo intente realizar el ejercicios al fallo \n-Si tienes dudas sobre como realizar algun ejercicio pulsa el siguiente boton',
                style: TextStyle(
                    fontFamily: 'Dangrek-Regular',
                    fontSize: 18.0,
                    color: Color.fromARGB(221, 0, 0, 0)),
              ),
              SizedBox(
                child: TextButton(

                    // aqui se hace la funiconalidad del boton
                    onPressed: () {

                      final route = MaterialPageRoute(
                        builder: (context) => Imagenes2(),
                      );
                      Navigator.push(context, route);
                    },
                    child: Text('Imagenes Guia de la rutina',
                        style: TextStyle(
                            fontSize: 25.0,
                            color: Color.fromARGB(255, 0, 0, 0),
                            backgroundColor: Color.fromARGB(255, 104, 195, 1),
                            fontFamily: 'Dangrek-Regular'))),
              ),

              SizedBox(
                child: TextButton(

                    // aqui se hace la funiconalidad del boton
                    onPressed: () {
                      final route = MaterialPageRoute(
                        builder: (context) => Menu(),
                      );
                      Navigator.push(context, route);
                    },
                    child: Text('volver al menu',
                        style: TextStyle(
                            fontSize: 25.0,
                            color: Color.fromARGB(255, 0, 0, 0),
                            backgroundColor: Color.fromARGB(255, 255, 255, 255),
                            fontFamily: 'Dangrek-Regular'))),
              ),
            ],
          )
        ],
      ),
    );
  }
}
