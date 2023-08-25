import 'package:flutter/material.dart';

// Entrada de la aplicación
void main() => runApp(const MyApp());

// Pantalla principal del programa5
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cronometro",
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Cronómetro"),
        ),
        body: const Column(
            //
            //    Aquí irán las clases de los widgets
            //
            ),
      ),
    );
  }
}
