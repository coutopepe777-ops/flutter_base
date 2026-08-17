import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(debugShowCheckedModeBanner: false, home: LoginPage()),
  );
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tela de login',
          style: TextStyle(color: Color.fromARGB(255, 5, 25, 35)),
        ),
        backgroundColor: const Color(0xff3273a8),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text('Acesso ao sistema', style: TextStyle(fontSize: 24)),
            const SizedBox(height: 24),
            const TextField(decoration: InputDecoration(labelText: 'E-mail')),
            const SizedBox(height: 24),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(labelText: 'senha'),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                debugPrint('Botão pressionado');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff3273a8),
                foregroundColor: Colors.black,
              ),
              child: const Text('Entrar'),
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: const Color(0xff3273a8),
      ),
      body: const Center(child: Text('Você entrou no sistema!')),
    );
  }
}
