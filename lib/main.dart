import 'package:flutter/material.dart';
import 'package:baylon/Login.dart';
import 'package:baylon/HomePage.dart';
import 'package:baylon/Clientes.dart';
import 'package:baylon/Articulos.dart';
import 'package:baylon/Empleados.dart';
import 'package:baylon/Conclusion.dart';
import 'package:baylon/Desarrollador.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      initialRoute: '/',
      routes: {
        '/': (context) => Login(),
        '/inicio': (context) => HomePage(),
        '/clientes': (context) => Clientes(),
        '/articulos': (context) => Articulos(),
        '/empleados': (context) => Empleados(),
        '/conclusion': (context) => Conclusion(),
        '/desarrollador': (context) => Desarrollador(),
      },
    );
  }
}
