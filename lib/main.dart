import 'package:flutter/material.dart';
import 'package:myapp/mispantallas/pagina_espera.dart';
import 'package:myapp/mispantallas/pagina_galeria.dart';
import 'package:myapp/mispantallas/pagina_seleccion.dart';


void main() => runApp(const MiAppYeyo());

class MiAppYeyo extends StatelessWidget {
  const MiAppYeyo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Yeyo Dwellings',
      theme: ThemeData(primaryColor: const Color(0xFF0D47A1)),
      initialRoute: '/',
      routes: {
        '/': (context) => const PaginaSeleccion(),
        '/galeria': (context) => const PaginaGaleria(),
        '/espera': (context) => const PaginaEspera(),
      },
    );
  }
}