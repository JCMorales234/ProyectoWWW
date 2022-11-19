import 'dart:async';

import 'package:flutter/material.dart';
import 'package:salufit/src/menu.dart';
import 'package:salufit/src/models/usuario.dart';

class Recetas2 extends StatefulWidget {
  final Usuario usuario;
  const Recetas2({super.key, required this.usuario});

  @override
  State<Recetas2> createState() => _Recetas2State(usuario: this.usuario);
}

class _Recetas2State extends State<Recetas2> {
  final Usuario usuario;
  _Recetas2State({required this.usuario});

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
                'Creemos que las siguientes recetas te podrian ayudar a llevar un mejor estilo de vida segun tu IMC:',
                style: TextStyle(
                    fontFamily: 'Dangrek-Regular',
                    fontSize: 30.0,
                    color: Color.fromARGB(221, 0, 0, 0)),
              ),
              Divider(
                height: 15.0,
              ),
              Text(
                '- Huevo Cocinado',
                style: TextStyle(
                    fontFamily: 'Dangrek-Regular',
                    fontSize: 30.0,
                    color: Color.fromARGB(221, 0, 0, 0)),
              ),
              Image(image: AssetImage('images/huevo.jpg')),
              Divider(
                height: 15.0,
              ),
              Text(
                '- Estofado de pollo',
                style: TextStyle(
                    fontFamily: 'Dangrek-Regular',
                    fontSize: 30.0,
                    color: Color.fromARGB(221, 0, 0, 0)),
              ),
              Image(image: AssetImage('images/Estofado.jpg')),
              Divider(
                height: 15.0,
              ),
              Text(
                '- Hamburguesa de pollo',
                style: TextStyle(
                    fontFamily: 'Dangrek-Regular',
                    fontSize: 30.0,
                    color: Color.fromARGB(221, 0, 0, 0)),
              ),
              Image(image: AssetImage('images/hamburguesa.jpg')),
              Divider(
                height: 15.0,
              ),
              Text(
                '- Pasta con Salchicha',
                style: TextStyle(
                    fontFamily: 'Dangrek-Regular',
                    fontSize: 30.0,
                    color: Color.fromARGB(221, 0, 0, 0)),
              ),
              Image(image: AssetImage('images/Pasta.jpg')),
              Divider(
                height: 15.0,
              ),
              Text(
                '- Yogurt con frutos secos',
                style: TextStyle(
                    fontFamily: 'Dangrek-Regular',
                    fontSize: 30.0,
                    color: Color.fromARGB(221, 0, 0, 0)),
              ),
              Image(image: AssetImage('images/yogurt.jpg')),
              SizedBox(
                child: TextButton(

                    // aqui se hace la funiconalidad del boton
                    onPressed: () {
                      final route = MaterialPageRoute(
                        builder: (context) => Menu(usuario: this.usuario),
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
