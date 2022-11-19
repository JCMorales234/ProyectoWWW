class Usuario {
  int? id;
  String nombre;
  String apellido;
  String correo;
  String telefono;
  double peso;
  double altura;
  String clave;

  Usuario(
      {this.id,
      required this.nombre,
      required this.apellido,
      required this.correo,
      required this.telefono,
      required this.altura,
      required this.peso,
      required this.clave});

  Map<String, dynamic> toMap() {
    return {
      'id_usuario': id,
      'nombres': nombre,
      'apellidos': apellido,
      'correo': correo,
      'telefono': telefono,
      'peso': peso,
      'altura': altura,
      'contraseña': clave
    };
  }
}
