import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:baylon/styles.dart';
import 'package:baylon/componentes/navBar.dart';
import 'package:baylon/componentes/ArticleColumn.dart';

class Articulos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: rojo,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: azul,
          onPressed: () {},
        ),
        title: Text(
          'Farmacia del ahorro',
          style: TextStyle(color: azul, fontWeight: FontWeight.bold),
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                    child: Text(
                      'Articulos',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: fontSizeTitles,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 600,
                    child: GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        // childAspectRatio: 1,
                      ),
                      // scrollDirection: Axis.vertical,
                      children: [
                        ArticleColumn(
                          imagen: "https://raw.githubusercontent.com/JorgeBaylon/pagevie/main/Farmacia/medicamento.jpg",
                          titulo: 'Medicamentos',
                        ),
                        ArticleColumn(
                          imagen: "https://raw.githubusercontent.com/JorgeBaylon/pagevie/main/Farmacia/pastillas.jpg",
                          titulo: "Pastillas",
                        ),
                        ArticleColumn(
                          imagen: "https://raw.githubusercontent.com/JorgeBaylon/pagevie/main/farmacia/Medicamentos.jpg",
                          titulo: "Medicamentos mayor de edad",
                        ),
                        ArticleColumn(
                          imagen: "https://raw.githubusercontent.com/JorgeBaylon/pagevie/main/farmacia/articulo.jpg",
                          titulo: "Medicamentos menor de edad",
                        ),
                        ArticleColumn(
                          imagen: "https://raw.githubusercontent.com/JorgeBaylon/pagevie/main/farmacia/medicamentosfarmacia.jpg",
                          titulo: 'otros.',
                        ),
                        ArticleColumn(
                          imagen: "https://raw.githubusercontent.com/JorgeBaylon/pagevie/main/farmacia/ho.jpg",
                          titulo: "Perservativos hombre",
                        ),
                        ArticleColumn(
                          imagen: "https://raw.githubusercontent.com/JorgeBaylon/pagevie/main/farmacia/mu.jpg",
                          titulo: 'Perservativos mujer',
                        ),
                        ArticleColumn(imagen: "https://raw.githubusercontent.com/JorgeBaylon/pagevie/main/farmacia/mu.jpg", titulo: 'Perservativos gneral'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                ],
              ),
            ),
          ),
          navBar(
            contexto: context,
            active: 'articulos',
          )
        ],
      ),
    );
  }
}
