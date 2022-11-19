import 'package:salufit/src/models/usuario.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DB {
  static Future<Database> _openDB() async {
    return openDatabase(join(await getDatabasesPath(), 'usuarios.db'),
        onCreate: (db, version) {
      return db.execute(
        "CREATE TABLE `Usuarios` (  `id_usuario` bigint PRIMARY KEY, `nombres` varchar(255),  `apellidos` varchar(255),  `correo` varchar(255), `contraseña` varchar(255), `telefono` varchar(255), `peso` double, `altura` double);" +
            " CREATE TABLE `Menus` (`id_menu` bigint PRIMARY KEY,`nombre` varchar(255),`imagen` varchar(255));" +
            "CREATE TABLE `ingredientes` (`id_ingrediente` bigint PRIMARY KEY,`nombre` varchar(255),`caloria` varchar(255));" +
            "CREATE TABLE `menus_ingredientes` (`id_menus_ingredientes` bigint PRIMARY KEY,`total_calorias` varchar(255),`id_menu` bigint,`id_ingrediente` bigint,FOREIGN KEY (`id_ingrediente`) REFERENCES `ingredientes` (`id_ingrediente`));" +
            "CREATE TABLE `rutinas` (`id_rutina` bigint PRIMARY KEY,`nombre` varchar(255),`tiempo_rutina` bigint);" +
            "CREATE TABLE `menus_rutinas` (`id_menu_rutina` bigint PRIMARY KEY,`id_menu` bigint,`id_rutina` bigint,FOREIGN KEY (`id_menu`) REFERENCES `Menus` (`id_menu`),FOREIGN KEY (`id_rutina`) REFERENCES `rutinas` (`id_rutina`));" +
            "CREATE TABLE `ejercicios` (`id_ejercicio` bigint PRIMARY KEY,`tipo_ejercicio` varchar(255),`series` varchar(255));" +
            "CREATE TABLE `usuarios_menus` (`id_ejercicio` bigint PRIMARY KEY,`id_menu` bigint,`id_usuario` bigint,FOREIGN KEY (`id_menu`) REFERENCES `Menus` (`id_menu`),FOREIGN KEY (`id_usuario`) REFERENCES `Usuarios` (`id_usuario`));" +
            "CREATE TABLE `usuarios_rutinas` (`id_ejercicio` bigint PRIMARY KEY,`id_rutina` bigint,`id_usuario` bigint,FOREIGN KEY (`id_rutina`) REFERENCES `rutinas` (`id_rutina`),FOREIGN KEY (`id_usuario`) REFERENCES `Usuarios` (`id_usuario`));" +
            "CREATE TABLE `rutinas_ejercicios` (`id_rutina_ejercicio` bigint PRIMARY KEY,`calorias_quemadas` double,`id_rutina` bigint,`id_ejercicio` bigint,FOREIGN KEY (`id_rutina`) REFERENCES `rutinas` (`id_rutina`),FOREIGN KEY (`id_ejercicio`) REFERENCES `Usuarios` (`id_usuario`));",
      );
    }, version: 1);
  }

  static Future<void> insert(Usuario usuario) async {
    Database database = await _openDB();

    database.insert("Usuarios", usuario.toMap());
  }

  static Future<void> delete(Usuario usuario) async {
    Database database = await _openDB();

    database.delete("Usuarios", where: "id = ?", whereArgs: [usuario.id]);
  }

  static Future<void> update(Usuario usuario) async {
    Database database = await _openDB();

    database.update("Usuarios", usuario.toMap(),
        where: "id = ?", whereArgs: [usuario.id]);
  }

  static Future<List<Usuario>> verification(Usuario usuario) async {
    Database database = await _openDB();
    final List<Map<String, dynamic>> hola = await database.query('Usuarios',
        where: 'correo = ? and contraseña = ?',
        whereArgs: [usuario.correo, usuario.clave]);

    return List.generate(
        hola.length,
        (index) => Usuario(
            id: hola[index]['id_usuario'],
            nombre: hola[index]['nombres'],
            apellido: hola[index]['apellidos'],
            correo: hola[index]['correo'],
            telefono: hola[index]['telefono'],
            altura: hola[index]['altura'],
            peso: hola[index]['peso'],
            clave: hola[index]['contraseña']));
  }
}
