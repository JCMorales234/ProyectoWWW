import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:salufit/src/Perfil.dart';
import 'package:salufit/src/Rutinas1.dart';
import 'package:salufit/src/Rutinas2.dart';
import 'package:salufit/src/login.dart';
import 'package:salufit/src/models/usuario.dart';
import 'package:salufit/src/sign_up.dart';
import 'package:salufit/src/Recetas1.dart';
import 'package:salufit/src/Recetas2.dart';

class Menu extends StatefulWidget {
  const Menu({super.key, required this.usuario});
  final Usuario usuario;
  @override
  State<Menu> createState() => _MenuState(usuario: this.usuario);
}

class _MenuState extends State<Menu> {
  final Usuario usuario;
  _MenuState({required this.usuario});

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
                'Bienvenido a Salufit!',
                style: TextStyle(
                    fontFamily: 'Dangrek-Regular',
                    fontSize: 35.0,
                    color: Color.fromARGB(221, 0, 0, 0)),
              ),
              Divider(
                height: 15.0,
              ),
              SizedBox(
                child: TextButton(

                    // aqui se hace la funiconalidad del boton
                    //#Todo logica para seleccionar que rutina desplegar segun el IMC
                    onPressed: () {
                      var IMC = usuario.peso / pow(usuario.altura, 2);
                      if (IMC < 24.9 && IMC > 0) {
                        final route = MaterialPageRoute(
                          builder: (context) => Rutinas2(usuario: usuario),
                        );
                        Navigator.push(context, route);
                      } else if (IMC > 25.0) {
                        final route = MaterialPageRoute(
                          builder: (context) => Rutinas1(usuario: usuario),
                        );
                        Navigator.push(context, route);
                      }
                    },
                    child: Text('Rutinas de ejercicios',
                        style: TextStyle(
                            fontSize: 25.0,
                            color: Color.fromARGB(255, 0, 0, 0),
                            backgroundColor: Color.fromARGB(255, 104, 195, 1),
                            fontFamily: 'Dangrek-Regular'))),
              ),
              SizedBox(
                child: TextButton(

                    // aqui se hace la funiconalidad del boton
                    //#Todo logica para seleccionar que receta desplegar segun el IMC
                    onPressed: () {
                      var IMC = usuario.peso / pow(usuario.altura, 2);
                      if (IMC < 24.9 && IMC > 0) {
                        final route = MaterialPageRoute(
                          builder: (context) => Recetas2(usuario: usuario),
                        );
                        Navigator.push(context, route);
                      } else if (IMC > 25.0) {
                        final route = MaterialPageRoute(
                          builder: (context) => Recetas1(usuario: usuario),
                        );
                        Navigator.push(context, route);
                      }
                    },
                    child: Text('Recetas',
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
                          builder: (context) => Perfil(usuario: usuario));
                      Navigator.push(context, route);
                    },
                    child: Text('Mi perfil',
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
                      final route =
                          MaterialPageRoute(builder: (context) => Mylogin());
                      Navigator.push(context, route);
                    },
                    child: Text('Cerrar Sesion',
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
