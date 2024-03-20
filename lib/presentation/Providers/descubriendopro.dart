import 'package:b/dominio/entidades/video_post.dart';
import 'package:b/infraestructura/models/localdelosvideos.dart';
import 'package:b/shared/data/local_video_post.dart';
import 'package:flutter/material.dart';

class descubriendopro extends ChangeNotifier{

  //TODO: Repositorio,Datasource

  bool iniciando=true;//*no hay ningun video
  List< VideoPost > videos=[];//aqui los carga 


//!Cambia con el datasource--solo esta funcion
//* el provider solo llama a la funcion no le importa mucho 

  Future<void> loadnextpage() async{

//*duracion del video 
    await Future.delayed(const Duration(seconds: 2));
//*listado del local_video_post
//iterable 

//*cargar videos 
final List<VideoPost>nuevosVideos=videoPosts.map(
    (video)=> LocalVideoModel.fromJson(video).toVideoPostEntity()
    ).toList();

//!para el repositorio esta parte se va 
    //final List<VideoPost>nuevosVideos=videoPosts.map(
      //(video)=>VideoPost(
      // nombre: video['nombre'],
      //  url: video['url'],
      //  likes: video['likes'],
      //  views:video['views'],
      //)
    
    //).toList();
//!------------------------------------------
    //todo:cargar videos
    videos.addAll(nuevosVideos);
    iniciando=false;
    notifyListeners();
  }
}