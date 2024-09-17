import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie Description App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.black,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white),
        ),
      ),
      home: const MovieDescriptionScreen(),
    );
  }
}

class MovieDescriptionScreen extends StatelessWidget {
  final String title = 'Inception';
  final String imageUrl = 'https://m.media-amazon.com/images/S/pv-target-images/e826ebbcc692b4d19059d24125cf23699067ab621c979612fd0ca11ab42a65cb._SX1080_FMjpg_.jpg';
  final String description = 'En un mundo donde existe la tecnología para ingresar a la mente humana a través de la invasión de los sueños, un ladrón altamente hábil recibe una última oportunidad de redención que implica ejecutar su trabajo más difícil hasta la fecha: Inception.';
  final String genre = 'ciencia ficciín';
  final double rating = 8.8;

  const MovieDescriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Prime Video',
          style: TextStyle(color: Colors.blue),
        ),
        backgroundColor: Colors.black,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.screen_share),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Movie Image
            Image.network(imageUrl),

            // Title
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),

            // Genre and Rating
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Chip(
                    label: Text(genre),
                    backgroundColor: Colors.blueAccent,
                  ),
                  const SizedBox(width: 8),
                  Chip(
                    label: Text('${rating.toStringAsFixed(1)} / 10'),
                    backgroundColor: Colors.orangeAccent,
                  ),
                ],
              ),
            ),

            // Description
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                description,
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
