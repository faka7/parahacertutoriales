//!modelo,mapper
//* shared\data\local_video_post.dart

import 'package:b/dominio/entidades/video_post.dart';

class LocalVideoModel {
   
  final String nombre;
  final String url;
  final int likes;
  final int views;

  LocalVideoModel({
    required this.nombre,
    required this.url,
    this.likes = 0,
    this.views = 0
  });

  //!por si hay un http (fromJson)
  factory LocalVideoModel.fromJson(Map<String, dynamic> json) => LocalVideoModel(
      nombre: json['nombre'] ?? 'No nombre',
      url: json['url'],
      likes: json['likes'] ?? 0,
      views: json['views'] ?? 0,
    );

  //!parte mas importante 
    //*maper--busco el nombre pa ponerlo 
  VideoPost toVideoPostEntity() => VideoPost(
    nombre: nombre,
    url: url,
    likes: likes,
    views: views
  );

}