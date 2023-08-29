import 'package:flutter/material.dart';

// Entrada de la aplicación
void main() => runApp(const MyApp());

// Variable global de los segundos que se desplegarán en el cronómetro
int seconds = 0;
// Variable para detener el flujo del cronómetro
bool start = false;

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
              child: Center(
                  child: Text(
                "${seconds}s",
                style: const TextStyle(color: Colors.white, fontSize: 80),
              )),
            ),
          ),
        ),
        const Spacer(flex: 1),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                // Lógica botón
                if (!start) {
                  start = true;
                  while (start) {
                    await Future.delayed(const Duration(seconds: 1));
                    if (!start) return;
                    setState(() {
                      seconds = seconds + 1;
                    });
                  }
                }
              },
              child: const Text("INICIAR"),
            ),
            const SizedBox(width: 20),
            ElevatedButton(
              onPressed: () {
                // Lógica botón
                start = false;

                setState(() {
                  seconds = 0;
                });
              },
              child: const Text("DETENER"),
            ),
          ], //children
        ),
        const Padding(
            padding: EdgeInsets.symmetric(vertical: 40, horizontal: 0))
      ],
    );
  }
}
