import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp());
}

class MyLogoApp extends StatelessWidget {
  const MyLogoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // SafeArea evita que a imagem fique debaixo da barra de bateria/relógio
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Sejam Bem Vindos!!', style: TextStyle(fontSize: 32)),
              SizedBox(height: 24),

              //Botão Voltar
              ElevatedButton(
                onPressed: () {
                  //volta para a tela anterior
                  //destruir a tela de home
                  Navigator.pop(context);
                },
                child: Text('Voltar para Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
