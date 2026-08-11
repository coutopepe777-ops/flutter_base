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
        body: SafeArea(
          child: Align(
            alignment: Alignment.topCenter,
            child: Image.network(
              'https://images.icon-icons.com/2108/PNG/512/flutter_icon_130936.png',
              height: 150, // Definimos a altura da imagem
              width: 150, // Definimos a largura da imagem
              fit: BoxFit.contain, // Garante que a imagem não seja cortada
            ),
          ),
        ),
      ),
    );
  }
}
