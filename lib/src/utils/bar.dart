// import 'dart:js';

import 'package:empower_app/rutes.dart';
import 'package:flutter/material.dart';

class CustomAppBar {
  static AppBar buildAppBar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,

      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'HumanSave',
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.07,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.02,
          ),
          Image.asset(
            'lib/assets/logoHumanSave_transparent.png',
            width: MediaQuery.of(context).size.width * 0.08,
            height: MediaQuery.of(context).size.width * 0.08,
          ),
        ],
      ),
      centerTitle: true,
      //boton de opciones
      // leading: IconButton(
      //   icon: const Icon(Icons.menu), // Ícono de menú
      //   onPressed: () {
      //     // Acción del botón
      //   },
      // ),
      actions: <Widget>[
        PopupMenuButton<String>(
          onSelected: (String value) {
            if (value == 'perfil') {
              // Navega a la pantalla de perfil
            } else if (value == 'cerrar_sesion') {
              Navigator.pushReplacementNamed(context, Routes.login);
            }
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
            const PopupMenuItem<String>(
              value: 'perfil',
              child: Text('Perfil'),
            ),
            const PopupMenuItem<String>(
              value: 'cerrar_sesion',
              child: Text('Cerrar sesión'),
            ),
          ],
          icon: Icon(Icons.person,
              size: MediaQuery.of(context).size.width * 0.08),
        ),
      ],
    );
  }
}
