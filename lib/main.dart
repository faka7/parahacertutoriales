import 'package:b/config/tema.dart';
import 'package:b/presentation/Providers/descubriendopro.dart';
import 'package:b/presentation/screens/descubriendovideos/descubriendopantallas.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';//mateapp

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      //!_ eso puede modificarse si queremos llamar a algo 
      //* loadnextpage() es solo para no escribir el loadnextpage() varias vces 
      providers: [
        ChangeNotifierProvider(
          lazy: false,//*lo manda al inicializador 
          create: (_) =>descubriendopro()..loadnextpage())//!proveedor 
      ],
      child: MaterialApp(
        title: 'Tik Tok de la Ale',
        debugShowCheckedModeBanner: false,
        theme: Tema().getTheme(), //!Tema
        home:const Descubriendopantallas() //!Descubriendopantallas
      ),
    );
  }
}