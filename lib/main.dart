import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp( // Removido o const daqui para não dar erro com o copyWith
    scrollBehavior: const MaterialScrollBehavior().copyWith(
      dragDevices: {PointerDeviceKind.touch, PointerDeviceKind.mouse},
    ),
    title: "App",
    home: const MainApp(),
  ));
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Column( // Trocado de Stack para Column para os itens ficarem um abaixo do outro
        children: [
          // 1. Imagem fixa no topo preenchendo a largura total
          SizedBox(
            width: double.infinity, 
            height: 300,            
            child: Image.asset(
              'img/MÉXICO.jpg',
              fit: BoxFit.cover,    
            ),
          ),
          
          // Um pequeno espaço entre a imagem do topo e o carrossel
          const SizedBox(height: 20),
          
          // 2. O Carrossel (Agora livre e clicável!)
          SizedBox(
            height: 200.0,
            child: CarouselView(
              itemExtent: 300, 
              children: [
                Image.asset('img/MÉXICO.jpg', fit: BoxFit.cover),
                Image.asset('img/MÉXICO.jpg', fit: BoxFit.cover),
                Image.asset('img/MÉXICO.jpg', fit: BoxFit.cover),
                Image.asset('img/MÉXICO.jpg', fit: BoxFit.cover),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
