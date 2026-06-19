import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
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
      body: SingleChildScrollView( 
        child: Column(
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
            
            // 2. O Carrossel
            SizedBox(
              height: 200.0,
              child: CarouselView(
                itemExtent: 200, 
                children: [
                  Image.asset('img/culinaria.jpg', fit: BoxFit.cover),
                  Image.asset('img/cultura.jpg', fit: BoxFit.cover),
                  Image.asset('img/geografia.jpg', fit: BoxFit.cover),
                  Image.asset('img/MÉXICO.jpg', fit: BoxFit.cover),
                ],
              ),
            ),

            const SizedBox(height: 40),

            // 3. Título dos Desenvolvedores
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "DESENVOLVEDORES",
                style: TextStyle(
                  fontSize: 24,               
                  fontWeight: FontWeight.bold, 
                  color: Colors.black87,       
                ),
              ),
            ),

            const SizedBox(height: 20),

            // 4. Duas imagens normais uma do lado da outra (REMOVIDO O CONST DAQUI)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0), 
              child: Row(
                children: [
                  // Primeira Imagem
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12), 
                      child: Image.asset(
                        'img/lucas.jpg',
                        height: 150,
                        fit: BoxFit.cover, // Adicionado para preencher certinho o espaço
                      ),
                    ),
                  ),
                  
                  const SizedBox(width: 16), 

                  // Segunda Imagem
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset('img/guilherme.jpg',
                        height: 150,
                        fit: BoxFit.cover, // Adicionado para preencher certinho o espaço
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
            // Um pequeno espaço no final para não sumir no rodapé
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}