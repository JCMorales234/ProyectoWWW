import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:salufit/src/login.dart';
import 'package:salufit/src/models/db.dart';
import 'package:salufit/src/models/usuario.dart';
import 'package:email_validator/email_validator.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final nombreController = TextEditingController();
  final apellidoController = TextEditingController();
  final telefonoController = TextEditingController();
  final correoController = TextEditingController();
  final estaturaController = TextEditingController();
  final pesoController = TextEditingController();
  final claveController = TextEditingController();

  String _errorMessage = '';

  void validateEmail(String val) {
    if (val.isEmpty ||
        nombreController.text.isEmpty ||
        apellidoController.text.isEmpty ||
        telefonoController.text.isEmpty ||
        estaturaController.text.isEmpty ||
        pesoController.text.isEmpty) {
      setState(() {
        _errorMessage = "Faltan algunos campos por rellenar";
      });
    } else if (!EmailValidator.validate(val, true)) {
      setState(() {
        _errorMessage = "El correo electronico es invalido";
      });
    } else {
      setState(() {
        _errorMessage = "";
      });
      DB.insert(Usuario(
          nombre: nombreController.text,
          apellido: apellidoController.text,
          correo: correoController.text,
          telefono: telefonoController.text,
          altura: double.parse(estaturaController.text),
          peso: double.parse(pesoController.text),
          clave: claveController.text));
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
                'Registro de usuario',
                style: TextStyle(
                    fontFamily: 'Dangrek-Regular',
                    fontSize: 35.0,
                    color: Color.fromARGB(221, 0, 0, 0)),
              ),
              TextField(
                  enableInteractiveSelection: false,
                  controller: nombreController,
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
                  controller: apellidoController,
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
                  controller: telefonoController,
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
                  controller: correoController,
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
                  controller: claveController,
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: 'Contraseña',
                    labelText: 'Contraseña',
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
                  controller: estaturaController,
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
                  controller: pesoController,
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
                      validateEmail(correoController.text);
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
