import 'dart:async';

import 'package:flutter/material.dart';
import 'package:salufit/src/models/db.dart';
import 'package:salufit/src/models/usuario.dart';
import 'package:salufit/src/sign_up.dart';
import 'package:salufit/src/menu.dart';

class Perfil extends StatefulWidget {
  final Usuario usuario;
  const Perfil({super.key, required this.usuario});

  @override
  State<Perfil> createState() => _PerfilState(usuario: usuario);
}

class _PerfilState extends State<Perfil> {
  final Usuario usuario;
  _PerfilState({required this.usuario});

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
                'Nombre',
                style: TextStyle(
                    fontFamily: 'Dangrek-Regular',
                    fontSize: 35.0,
                    color: Color.fromARGB(221, 0, 0, 0)),
              ),
              Text(
                usuario.nombre,
                style: TextStyle(
                    fontFamily: 'Dangrek-Regular',
                    fontSize: 25.0,
                    color: Color.fromARGB(221, 0, 0, 0)),
              ),
              Text(
                'Apellido',
                style: TextStyle(
                    fontFamily: 'Dangrek-Regular',
                    fontSize: 35.0,
                    color: Color.fromARGB(221, 0, 0, 0)),
              ),
              Text(
                usuario.apellido,
                style: TextStyle(
                    fontFamily: 'Dangrek-Regular',
                    fontSize: 25.0,
                    color: Color.fromARGB(221, 0, 0, 0)),
              ),
              Text(
                'Telefono',
                style: TextStyle(
                    fontFamily: 'Dangrek-Regular',
                    fontSize: 35.0,
                    color: Color.fromARGB(221, 0, 0, 0)),
              ),
              Text(
                usuario.telefono,
                style: TextStyle(
                    fontFamily: 'Dangrek-Regular',
                    fontSize: 25.0,
                    color: Color.fromARGB(221, 0, 0, 0)),
              ),
              Text(
                'Correo electronico',
                style: TextStyle(
                    fontFamily: 'Dangrek-Regular',
                    fontSize: 35.0,
                    color: Color.fromARGB(221, 0, 0, 0)),
              ),
              Text(
                usuario.correo,
                style: TextStyle(
                    fontFamily: 'Dangrek-Regular',
                    fontSize: 25.0,
                    color: Color.fromARGB(221, 0, 0, 0)),
              ),
              Text(
                'Estatura',
                style: TextStyle(
                    fontFamily: 'Dangrek-Regular',
                    fontSize: 35.0,
                    color: Color.fromARGB(221, 0, 0, 0)),
              ),
              Text(
                usuario.altura.toString(),
                style: TextStyle(
                    fontFamily: 'Dangrek-Regular',
                    fontSize: 35.0,
                    color: Color.fromARGB(221, 0, 0, 0)),
              ),
              Text(
                'Peso',
                style: TextStyle(
                    fontFamily: 'Dangrek-Regular',
                    fontSize: 35.0,
                    color: Color.fromARGB(221, 0, 0, 0)),
              ),
              Text(
                usuario.peso.toString(),
                style: TextStyle(
                    fontFamily: 'Dangrek-Regular',
                    fontSize: 25.0,
                    color: Color.fromARGB(221, 0, 0, 0)),
              ),
              Divider(
                height: 15.0,
              ),
              SizedBox(
                child: TextButton(

                    // aqui se hace la funiconalidad del boton
                    onPressed: () {
                      final route = MaterialPageRoute(
                        builder: (context) => Menu(
                          usuario: usuario,
                        ),
                      );
                      Navigator.push(context, route);
                    },
                    child: Text('Volver al menu',
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
