import 'package:flutter/material.dart';

class PaginaSeleccion extends StatelessWidget {
  const PaginaSeleccion({super.key});

  @override
  Widget build(BuildContext context) {
    const Color azulFormal = Color(0xFF0D47A1);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Bienvenido,", style: TextStyle(color: Colors.grey, fontSize: 12)),
            Text("Diego Alberto Cruz Acosta 6ºJ", 
                 style: const TextStyle(color: azulFormal, fontWeight: FontWeight.bold, fontSize: 15)),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("1. Select your Dwelling", 
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 15),
            // Buscador no funcional (Estético)
            TextField(
              decoration: InputDecoration(
                hintText: "Search properties...",
                prefixIcon: const Icon(Icons.search, color: azulFormal),
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  _itemLista(context, "Residencial Premium", "⭐ 4.9"),
                  _itemLista(context, "Casa de Campo", "⭐ 4.5"),
                  _itemLista(context, "Loft Moderno", "⭐ 4.2"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _itemLista(BuildContext context, String titulo, String sub) {
    return Card(
      margin: const EdgeInsets.only(bottom: 15),
      child: ListTile(
        leading: const Icon(Icons.home, color: Color(0xFF0D47A1)),
        title: Text(titulo, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(sub),
        trailing: const Icon(Icons.arrow_forward_ios, size: 15),
        onTap: () => Navigator.pushNamed(context, '/galeria'),
      ),
    );
  }
}