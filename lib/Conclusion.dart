import 'package:flutter/material.dart';
import 'package:baylon/styles.dart';
import 'package:baylon/componentes/navBar.dart';

class Conclusion extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Farmacia del ahorro",
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Farmacia del ahorro',
            style: TextStyle(
              color: azul,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: rojo,
          leading: IconButton(icon: Icon(Icons.menu, color: azul), onPressed: () {}),
          elevation: 10,
        ),
        body: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 0),
                  child: Text(
                    'Conclusión',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: fontSizeTitles,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                  child: Text('Gracias a esta actividad me di cuenta que no soy muy bueno para esto pero se hizo lo que se pudo. Loque egusto mucho es que puedo hacerla como yo quiera o tambien pedir un poco de opinion y que me den mas ideas. Tambien de lo mas importante es que en el transcurso de todo este semestre y esta ultima actividad es que aprendi nuevos codigos dificiles faciles de todo habia pero aprendi batante GRACIAS'),
                ),
              ],
            ),
            navBar(contexto: context, active: 'conclusion')
          ],
        ),
      ),
    );
  }
}
