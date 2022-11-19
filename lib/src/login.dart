import 'dart:async';

import 'package:flutter/material.dart';
import 'package:salufit/src/models/db.dart';
import 'package:salufit/src/models/usuario.dart';
import 'package:salufit/src/sign_up.dart';
import 'package:salufit/src/menu.dart';

class Mylogin extends StatefulWidget {
  const Mylogin({super.key});

  @override
  State<Mylogin> createState() => _MyloginState();
}

class _MyloginState extends State<Mylogin> {
  final correoController = TextEditingController();
  final claveController = TextEditingController();
  String _errorMessage = '';

  verificarUsuario() async {
    List<Usuario> verificar = await DB.verification(Usuario(
        nombre: 'nombre',
        apellido: 'apellido',
        correo: correoController.text,
        telefono: 'telefono',
        altura: 10,
        peso: 10,
        clave: claveController.text));

    if (verificar.length == 0) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Error'),
              content: SingleChildScrollView(
                  child: ListBody(
                children: [Text('Credenciales invalidas')],
              )),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Aceptar'),
                )
              ],
            );
          });
    } else {
      final route = MaterialPageRoute(
        builder: (context) => Menu(usuario: verificar[0]),
      );
      Navigator.push(context, route);
    }
  }

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
                'Correo Electronico',
                style: TextStyle(
                    fontFamily: 'Dangrek-Regular',
                    fontSize: 35.0,
                    color: Color.fromARGB(221, 0, 0, 0)),
              ),
              TextField(
                  enableInteractiveSelection: false,
                  controller: correoController,
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: 'Correo Electronico',
                    labelText: 'Correo Electronico',
                    suffixIcon: Icon(Icons.account_circle),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                  // aqui se recibe el valor en el campo de texto nombre de usuario
                  onSubmitted: (valor) {
                    valor;
                  }),
              Text(
                'Contraseña',
                style: TextStyle(
                    fontFamily: 'Dangrek-Regular',
                    fontSize: 35.0,
                    color: Color.fromARGB(221, 0, 0, 0)),
              ),
              TextField(
                enableInteractiveSelection: false,
                controller: claveController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Contraseña del usuario',
                  labelText: 'Contraseña del usuario',
                  suffixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                ),
                // aqui se recibe el valor en el campo de texto contrasena
                onSubmitted: (valor) {},
              ),
              Divider(
                height: 15.0,
              ),
              SizedBox(
                child: TextButton(

                    // aqui se hace la funiconalidad del boton
                    onPressed: () {
                      if (correoController.text.isEmpty ||
                          claveController.text.isEmpty) {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text('Error'),
                                content: SingleChildScrollView(
                                    child: ListBody(
                                  children: [
                                    Text('Faltan campos por rellenar')
                                  ],
                                )),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text('Aceptar'),
                                  )
                                ],
                              );
                            });
                      } else {
                        verificarUsuario();
                      }
                    },
                    child: Text('Iniciar Sesion',
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
                        builder: (context) => SignUp(),
                      );
                      Navigator.push(context, route);
                    },
                    child: Text('Registrarse',
                        style: TextStyle(
                            fontSize: 15.0,
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
