import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:salufit/src/login.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                'Registro de usuario',
                style: TextStyle(
                    fontFamily: 'Dangrek-Regular',
                    fontSize: 35.0,
                    color: Color.fromARGB(221, 0, 0, 0)),
              ),
              TextField(
                  enableInteractiveSelection: false,
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: 'Nombre',
                    labelText: 'Nombre',
                    suffixIcon: Icon(Icons.account_circle),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                  onSubmitted: (valor) {}),
              Divider(
                height: 15.0,
              ),
              TextField(
                  enableInteractiveSelection: false,
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: 'Apellido',
                    labelText: 'Apellido',
                    suffixIcon: Icon(Icons.account_circle),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                  onSubmitted: (valor) {}),
              Divider(
                height: 15.0,
              ),
              TextField(
                  enableInteractiveSelection: false,
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Celular',
                    labelText: 'Celular',
                    suffixIcon: Icon(Icons.account_circle),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                  onSubmitted: (valor) {}),
              Divider(
                height: 15.0,
              ),
              TextField(
                  enableInteractiveSelection: false,
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: 'Correo Electronico',
                    labelText: 'Correo Elecronico',
                    suffixIcon: Icon(Icons.account_circle),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                  onSubmitted: (valor) {}),
              Divider(
                height: 15.0,
              ),
              TextField(
                  enableInteractiveSelection: false,
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Estatura',
                    labelText: 'Estatura',
                    suffixIcon: Icon(Icons.account_circle),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                  onSubmitted: (valor) {}),
              Divider(
                height: 15.0,
              ),
              TextField(
                  enableInteractiveSelection: false,
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Peso',
                    labelText: 'Peso',
                    suffixIcon: Icon(Icons.account_circle),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                  onSubmitted: (valor) {}),
              Divider(
                height: 15.0,
              ),
              SizedBox(
                child: TextButton(

                    // aqui se hace la funiconalidad del boton
                    onPressed: () {
                      print('El usuario es  y la contraseña es ');
                    },
                    child: Text('Registrarse',
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
                      print(
                          'cuando se implementa enviara el usuario al formulario para registrarse');
                      final route =
                          MaterialPageRoute(builder: (context) => Mylogin());
                      Navigator.push(context, route);
                    },
                    child: Text('Volver al login',
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
