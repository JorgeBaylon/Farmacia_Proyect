import 'package:flutter/material.dart';
import 'package:baylon/styles.dart';
import 'package:baylon/componentes/navBar.dart';
import 'package:baylon/componentes/ClientCard.dart';

class Clientes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: rojo,
        elevation: 10,
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.menu, color: azul), onPressed: () {}),
        title: Text("Farmacia del ahorro", style: TextStyle(color: azul, fontWeight: FontWeight.bold)),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 10),
                  child: Text(
                    'Registro de cliente',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: fontSizeTitles,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Ingresa tu nombre',
                      filled: true,
                      fillColor: Color(0xFFEBEBEB),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Ingresa tu apellido',
                      filled: true,
                      fillColor: Color(0xFFEBEBEB),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 120.0,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: 'Edad',
                            filled: true,
                            fillColor: Color(0xFFEBEBEB),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'No. Telefono',
                              filled: true,
                              fillColor: Color(0xFFEBEBEB),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Ingresa tu correo',
                      filled: true,
                      fillColor: Color(0xFFEBEBEB),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Ingresa tu contraseña',
                      filled: true,
                      fillColor: Color(0xFFEBEBEB),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                  child: ElevatedButton(
                    onPressed: () => showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('Registro'),
                        content: const Text('¡Se han registrado sus datos correctamente!'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'Cancelar'),
                            child: const Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'OK'),
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    ),
                    child: Text('REGISTARSE'),
                    style: ElevatedButton.styleFrom(
                      primary: azul,
                      minimumSize: Size(
                        double.infinity,
                        60,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 70,
                )
              ],
            ),
          ),
          navBar(contexto: context, active: 'clientes')
        ],
      ),
    );
  }
}
