import 'package:flutter/material.dart';

void main() => runApp(CatalogoPeliculasApp());

class CatalogoPeliculasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Catálogo de Películas',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Catálogo de Películas'),
          backgroundColor: Colors.deepPurple,
        ),
        body: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Text(
                'Películas Recomendadas',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              // Película 1
              Container(
                padding: EdgeInsets.all(10),
                color: Colors.grey[200],
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      height: 150,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://m.media-amazon.com/images/I/81p+xe8cbnL._AC_SY679_.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Inception',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                          SizedBox(height: 8),
                          Text(
                              'Un ladrón que roba secretos a través de sueños debe realizar una última misión.'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              // Película 2
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 180,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://m.media-amazon.com/images/I/91KkWf50SoL._AC_SY679_.jpg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: Container(
                      color: Colors.black.withOpacity(0.5),
                      padding: EdgeInsets.all(5),
                      child: Text(
                        'The Dark Knight',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
