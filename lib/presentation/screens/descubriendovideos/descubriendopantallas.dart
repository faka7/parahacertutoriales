
//* statelessW+Tab
//!la clase Descubriendopantallas esta utilizado en el main  

import 'package:b/presentation/Providers/descubriendopro.dart';
import 'package:b/presentation/widgets/reutilizable/scrolldelvideo.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Descubriendopantallas  extends StatelessWidget {
  // No hay mucha logica

  const Descubriendopantallas ({super.key});

  @override
  Widget build(BuildContext context) {

//*son iguales uno mas corto etc 
    final Descubriendopro = context.watch<descubriendopro>();
    //final Descubriendopro= context.read<descubriendopro>();
    //final OtroProvider=Provider.of<descubriendopro>(context,listen: false);
//*-------------------------------------------------
    return Scaffold(//*modifcador constante
      body: Descubriendopro.iniciando
        ? const Center(child: CircularProgressIndicator(strokeWidth: 2))//*grosor de  la x
        : Scrolldelvideo(videos: Descubriendopro.videos )
    );
  }
}