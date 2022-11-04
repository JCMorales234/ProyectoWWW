import 'dart:async';

import 'package:flutter/material.dart';

class Mylogin extends StatefulWidget {
  const Mylogin({super.key});

  @override
  State<Mylogin> createState() => _MyloginState();
}

class _MyloginState extends State<Mylogin> {

  @override

  String Nombre_usuario = "";
  String Password_usuario = "";

  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color.fromARGB(255, 232, 232, 232),
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
                  fontSize: 35.0,
                  color: Color.fromARGB(221, 0, 0, 0)
                ),
              ),
              TextField(
                enableInteractiveSelection: false,
                autofocus: true,
                decoration: InputDecoration(
                  hintText: 'Nombre de Usuario',
                  labelText: 'Nombre de usuario',
                  suffixIcon: Icon(
                    Icons.account_circle
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                ),
                onSubmitted: (valor){
                  Nombre_usuario = valor;
                }
              ),
              Text(
                'Contraseña',
                style: TextStyle(
                  fontFamily: 'Dangrek-Regular',
                  fontSize: 35.0,
                  color: Color.fromARGB(221, 0, 0, 0)
                ),
              ),
              TextField(
                enableInteractiveSelection: false,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Contraseña del usuario',
                  labelText: 'Contraseña del usuario',
                  suffixIcon: Icon(
                    Icons.lock
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                ),
                onSubmitted: (valor){
                  Password_usuario = valor;
                },
              ),
              Divider(
                height: 15.0,
              ),
              SizedBox(
                child: TextButton(
              
                  // aqui se hace la funiconalidad del boton
                  onPressed: (){
                    print('El usuario es $Nombre_usuario y la contraseña es $Password_usuario');
                  },
                  child: Text('Iniciar Sesion',
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Color.fromARGB(255, 0, 0, 0),
                    backgroundColor: Color.fromARGB(255, 104, 195, 1),
                    fontFamily: 'Dangrek-Regular'

                  )
                  )
                ),
              ),
              SizedBox(
                child: TextButton(
              
                  // aqui se hace la funiconalidad del boton
                  onPressed: (){
                    print('cuando se implementa enviara el usuario al formulario para registrarse');
                  },
                  child: Text('Registrarse',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Color.fromARGB(255, 0, 0, 0),
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    fontFamily: 'Dangrek-Regular'

                  )
                  )
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}