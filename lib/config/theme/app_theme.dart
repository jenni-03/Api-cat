import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.pink,
  Colors.blue,
  Colors.blueGrey,
  Colors.green,
  Colors.purple,
  Colors.yellow,
];

class AppTheme {
  final int selectedColor;

  AppTheme({
    this.selectedColor = 0
  }): assert( selectedColor >= 0, 'El color de tema seleccionado no puede ser menos que 0'),
      assert( selectedColor < colorList.length, 'El color de tema seleccionado no puede ser mayor que ${colorList.length-1}');

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[selectedColor],
    //Si se quiere alinear al centro todos los appBar de la app
    // appBarTheme: const AppBarTheme(
    //     centerTitle: true,
    // ),
  );
}
