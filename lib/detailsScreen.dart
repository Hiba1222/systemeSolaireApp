import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String name;
  final String image;
  final String description;

  const DetailsScreen({
    super.key,
    required this.name,
    required this.image,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Image.network(
            image,
            errorBuilder: (context, error, stackTrace) => const Icon(Icons.error),
          ),
          const SizedBox(height: 20),
          Text(
            name,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              description,
              style: const TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
