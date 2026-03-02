import 'package:flutter/material.dart';

class PaginaGaleria extends StatelessWidget {
  const PaginaGaleria({super.key});

  @override
  Widget build(BuildContext context) {
    const Color azulFormal = Color(0xFF0D47A1);

    // Lista de URLs para tus fotos. Puedes cambiarlas por las tuyas.
    final List<String> fotosPropiedad = [
      'https://raw.githubusercontent.com/DiegoCruz0475/UI_Exa_0475_DACA/refs/heads/main/Fotos/casa1.jpg',
      'https://raw.githubusercontent.com/DiegoCruz0475/UI_Exa_0475_DACA/refs/heads/main/Fotos/casa2.jpg',
      'https://raw.githubusercontent.com/DiegoCruz0475/UI_Exa_0475_DACA/refs/heads/main/Fotos/casa3.jpg',
      'https://raw.githubusercontent.com/DiegoCruz0475/UI_Exa_0475_DACA/refs/heads/main/Fotos/casa4.jpg',
      'https://raw.githubusercontent.com/DiegoCruz0475/UI_Exa_0475_DACA/refs/heads/main/Fotos/casa5.jpg',
      'https://raw.githubusercontent.com/DiegoCruz0475/UI_Exa_0475_DACA/refs/heads/main/Fotos/casa6.jpg',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("1. Gathering Details", style: TextStyle(color: Colors.white)),
        backgroundColor: azulFormal,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search in gallery...",
                prefixIcon: const Icon(Icons.image_search, color: azulFormal),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 1.0,
              ),
              itemCount: 6,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[50],
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: NetworkImage(fotosPropiedad[index]),
                      fit: BoxFit.cover, // Esto hace que la foto llene el cuadro
                    ),
                    border: Border.all(color: Colors.blue.shade100, width: 2),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: azulFormal,
        onPressed: () => Navigator.pushNamed(context, '/espera'),
        child: const Icon(Icons.arrow_forward, color: Colors.white),
      ),
    );
  }
}