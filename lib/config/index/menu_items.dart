import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title, 
    required this.subtitle, 
    required this.link, 
    required this.icon
  });
}

  //Para agregar un listado de opciones en la pantalla principal
  const appMenuItems = <MenuItem>[
    MenuItem(
      title: 'Cat Api', 
      subtitle: 'Here you can find out about all the existing cat breeds', 
      link: 'link', 
      icon: Icons.pets_rounded,
    ),
  ];
