import 'package:flutter/material.dart';

class PaginaEspera extends StatelessWidget {
  const PaginaEspera({super.key});

  @override
  Widget build(BuildContext context) {
    const Color azulFormal = Color(0xFF0D47A1);

    return Scaffold(
      appBar: AppBar(
        title: const Text("1. Waiting for Approval", style: TextStyle(color: Colors.white)),
        backgroundColor: azulFormal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text("02:39", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: azulFormal)),
            const Text("Tiempo restante de revisión", style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  _agenteItem("Agente Yeyo", "Revisando documentos", "https://raw.githubusercontent.com/DiegoCruz0475/UI_Exa_0475_DACA/refs/heads/main/Fotos/german.jpg"),
                  _agenteItem("Diego Cruz", "Validando propiedad", "https://raw.githubusercontent.com/DiegoCruz0475/UI_Exa_0475_DACA/refs/heads/main/Fotos/goku.jpg"),
                  _agenteItem("Supervisor 6J", "Esperando firma", "https://raw.githubusercontent.com/DiegoCruz0475/UI_Exa_0475_DACA/refs/heads/main/Fotos/marin.jpg"),
                  _agenteItem("Notario Público", "En espera", "https://raw.githubusercontent.com/DiegoCruz0475/UI_Exa_0475_DACA/refs/heads/main/Fotos/rubius.jpg"),
                ],
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Propiedad aprobada exitosamente"))
                  );
                },
                child: const Text("APROBAR", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _agenteItem(String nombre, String estado, String urlFoto) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(urlFoto), // Aquí va la foto del agente
          backgroundColor: const Color(0xFF0D47A1),
        ),
        title: Text(nombre, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(estado),
      ),
    );
  }
}