import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Catálogo de Películas',
      home: PantallaInicio(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PantallaInicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Imagen de fondo
          Image.network(
            'https://acf.geeknetic.es/imgw/imagenes/auto/2023/11/1/y6r-image.png?f=webp',
            fit: BoxFit.cover,
          ),
          // Fondo semitransparente
          Container(
            color: Colors.black.withOpacity(0.5),
          ),

          // Contenido
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '¡Bienvenido!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Catálogo de Películas',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
