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
          body: const Cronometer()),
    );
  }
}

class Cronometer extends StatefulWidget {
  const Cronometer({super.key});

  @override
  State<Cronometer> createState() => _CronometerState();
}

class _CronometerState extends State<Cronometer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: ClipOval(
            child: Container(
              color: Theme.of(context).primaryColor,
              height: 300,
              width: 300,
              child: const Center(
                  child: Text(
                "0s",
                style: TextStyle(color: Colors.white, fontSize: 80),
              )),
            ),
          ),
        ),
        const Row(
          children: [
            //
            // Acá van los botones
            //
          ],
        )
      ],
    );
  }
}
