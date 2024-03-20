import 'package:b/dominio/entidades/video_post.dart';
import 'package:flutter/material.dart';

class Scrolldelvideo  extends StatelessWidget {
  final List<VideoPost> videos; 

  const Scrolldelvideo ({
    super.key,
    required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: const BouncingScrollPhysics(),
      children: [
        Container(
          color: Colors.blue),
        Container(
          color: Color.fromARGB(255, 242, 29, 242)),
        Container(
          color: Color.fromARGB(255, 213, 241, 54)),
        Container(
          color: Color.fromARGB(255, 241, 57, 54)) 
      ],
    );
  }
}