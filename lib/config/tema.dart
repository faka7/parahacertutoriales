import 'package:flutter/material.dart';

//!la clase Tema esta utilizado en el main 

class Tema{
//todo en dart es clase 
//* Tambien podrian ser funciones pero las clases ayudan en las instancias 
//* Metodo ThemeData con return ThemeData

  ThemeData getTheme()=> ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,//*tema oscuro 
  );
}