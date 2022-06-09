import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:baylon/componentes/slider_home.dart';
import 'package:baylon/componentes/CircleWidget.dart';
import 'package:baylon/componentes/ArticleCard.dart';
import 'package:baylon/styles.dart';
import 'package:baylon/componentes/navBar.dart';

class HomePage extends StatelessWidget {
  //
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // Application name
        debugShowCheckedModeBanner: false,
        title: 'Farmacia del ahorro',
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: rojo,
            elevation: 10,
            title: Text('Farmacia', style: TextStyle(color: azul, fontWeight: FontWeight.bold)),
            centerTitle: true,
            leading: IconButton(
              icon: Icon(Icons.menu, color: azul),
              onPressed: () {},
            ),
          ),
          body: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Texto de Bienvenida
                    Padding(padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0), child: Text("Bienvenido", textAlign: TextAlign.start, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: fontSizeTitles))),
                    //Contenedor del Swiper
                    //Imagen abajo del swiper
                    Padding(padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10), child: Image.network('https://raw.githubusercontent.com/JorgeBaylon/pagevie/main/Farmacia/calidad.jpg')),

                    Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Text("Ofertas",
                            style: TextStyle(
                              color: azul,
                              fontSize: fontSizeSubtitles,
                              fontWeight: FontWeight.bold,
                            ))),
                    ArticleCard(
                      titulo: 'Medicamentos',
                      precio: '80',
                      imagen: 'https://raw.githubusercontent.com/JorgeBaylon/pagevie/main/Farmacia/Medicamentos.jpg',
                    ),
                    ArticleCard(
                      titulo: 'Pastillas',
                      precio: '60',
                      imagen: 'https://raw.githubusercontent.com/JorgeBaylon/pagevie/main/Farmacia/pastillas.jpg',
                    ),
                    SizedBox(
                      height: 70,
                    ),
                  ],
                ),
              ),
              navBar(contexto: context, active: 'inicio'),
            ],
          ),
          // bottomNavigationBar: navBar(),
        ));
  }
}
