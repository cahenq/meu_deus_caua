import 'package:flutter/material.dart';
import 'package:meu_deus_caua/login_page.dart'; // Importe o arquivo da tela de login

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Acesso Login',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromARGB(255, 0, 0, 0),
        ),
        scaffoldBackgroundColor: Colors.black, // Define a cor de fundo do Scaffold
        primarySwatch: Colors.grey, // Define a cor primária
        textTheme: const TextTheme(
          // Defina estilos de texto personalizados
          headline1: TextStyle(fontSize: 24.0, color: Colors.white),
          headline2: TextStyle(fontSize: 18.0, color: Colors.white),
          // E assim por diante...
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(), // Use o widget da tela de login aqui
        '/home': (context) => HomeScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela de Início'),
      ),
      body: Center(
        child: Text(
          'Bem-Vindo!',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}