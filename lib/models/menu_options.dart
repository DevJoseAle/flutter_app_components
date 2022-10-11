 
import 'package:flutter/material.dart';

class MenuOption{
  // Formato del menu de opciones - Inicialización de las variables
  final String route; //Direccion de la ruta
  final IconData icon;  //Icono del listTile
  final String name; //String de nombre de ruta (se muestra)
  final Widget screen;

  MenuOption({
    required this.route, 
    required this.icon, 
    required this.name, 
    required this.screen
    }); // Widget general de ruta de screen  - Pantalla a mostrar

 } 