//!se mencionan en Providers/descubriendopro
class VideoPost{

  //* propiedades de la clase
  final String nombre;
  final String url;
  final int likes;
  final int views;

  //*click en el foquito y agregas campos faltantes 
  VideoPost({
    required this.nombre, 
    required this.url, 
    this.likes=0, 
    this.views=0, 
  });
}