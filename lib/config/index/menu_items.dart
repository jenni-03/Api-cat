import 'package:flutter/material.dart';

class MenuItem {
  final String tittle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.tittle, 
    required this.link, 
    required this.icon
  });
}

  //Para agregar un listado de opciones en la pantalla principal
  const appMenuItems = <MenuItem>[
    MenuItem(
      tittle: 'Botones', 
      link: 'link', 
      icon: Icons.smart_button_outlined
    ),
  ];
