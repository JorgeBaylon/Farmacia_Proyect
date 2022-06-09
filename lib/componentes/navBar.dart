import 'package:flutter/material.dart';
import 'package:baylon/styles.dart';

class navBar extends StatelessWidget {
  navBar({
    @required this.contexto,
    @required this.active,
  });

  final contexto;
  final active;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Material(
          elevation: 10,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          child: Container(
            height: 60.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              color: Colors.white,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(contexto, '/inicio');
                  },
                  icon: Icon(Icons.home, color: active == 'inicio' ? azul : null),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(contexto, '/articulos');
                  },
                  icon: Icon(Icons.shopping_cart, color: active == 'articulos' ? azul : null),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(contexto, '/clientes');
                  },
                  icon: Icon(Icons.face, color: active == 'clientes' ? azul : null),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(contexto, '/empleados');
                  },
                  icon: Icon(Icons.switch_account, color: active == 'empleados' ? azul : null),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(contexto, '/conclusion');
                  },
                  icon: Icon(Icons.text_snippet, color: active == 'conclusion' ? azul : null),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(contexto, '/desarrollador');
                  },
                  icon: Icon(Icons.manage_accounts, color: active == 'desarrollador' ? azul : null),
                ),
              ],
            ),
          )),
    );
  }
}
