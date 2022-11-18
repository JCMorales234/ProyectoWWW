import 'dart:async';

import 'package:flutter/material.dart';
import 'package:salufit/src/menu.dart';


class Recetas1 extends StatefulWidget {
  const Recetas1({super.key});

  @override
  State<Recetas1> createState() => _Recetas1State();
}

class _Recetas1State extends State<Recetas1> {
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
                'Creemos que las siguientes recetas te podrian ayudar a llevar un mejor estilo de vida Segun tu IMC:',
                style: TextStyle(
                    fontFamily: 'Dangrek-Regular',
                    fontSize: 30.0,
                    color: Color.fromARGB(221, 0, 0, 0)),
              ),

              Divider(
                height: 15.0,
              ),

              Text(
                '-Salmon crujiente con papas y esparragos',
                style: TextStyle(
                    fontFamily: 'Dangrek-Regular',
                    fontSize: 30.0,
                    color: Color.fromARGB(221, 0, 0, 0)),
              ),

              Image(image: AssetImage('images/Salmon.jpg')
             ),

            Divider(
                height: 15.0,
              ),

             Text(
                '-Pollo con brocoli al estilo chino',
                style: TextStyle(
                    fontFamily: 'Dangrek-Regular',
                    fontSize: 30.0,
                    color: Color.fromARGB(221, 0, 0, 0)),
              ),

               Image(image: AssetImage('images/pollo.jpg')
             ),

             Divider(
                height: 15.0,
              ),

             Text(
                '-Batido de avena banano y fresa',
                style: TextStyle(
                    fontFamily: 'Dangrek-Regular',
                    fontSize: 30.0,
                    color: Color.fromARGB(221, 0, 0, 0)),
              ),

               Image(image: AssetImage('images/Batido.jpg')
             ),

              Divider(
                height: 15.0,
              ),

             Text(
                '-Snack de fresas con limon',
                style: TextStyle(
                    fontFamily: 'Dangrek-Regular',
                    fontSize: 30.0,
                    color: Color.fromARGB(221, 0, 0, 0)),
              ),

               Image(image: AssetImage('images/Fresas.jpg')
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
