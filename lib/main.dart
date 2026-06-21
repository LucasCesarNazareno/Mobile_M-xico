import 'package:flutter/material.dart';
import 'culinaria.dart';
import 'cultura.dart'; 
import 'geografia.dart'; 
import 'historia.dart';

void main() {
  runApp(const MaterialApp(
    title: "App",
    home: MainApp(),
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
      backgroundColor: Colors.white,
      body: SingleChildScrollView( 
        child: Column(
          children: [
            SizedBox(
              width: double.infinity, 
              height: 300,            
              child: Image.asset(
                'img/MÉXICO.jpg',
                fit: BoxFit.cover,    
              ),
            ),
            
            const SizedBox(height: 20),
            
            SizedBox(
              height: 200.0,
              child: CarouselView(
                itemExtent: 200, 
                onTap: (int index) {
                  if (index == 0) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CulinariaPage(),
                        settings: const RouteSettings(arguments: 'Culinária Mexicana'),
                      ),
                    );
                  }
                  else if (index == 1) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CulturaPage(),
                        settings: const RouteSettings(arguments: 'Cultura Mexicana'),
                      ),
                    );
                  }
                  else if (index == 2) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GeografiaPage(),
                        settings: const RouteSettings(arguments: 'Geografia Mexicana'),
                      ),
                    );
                  }
                  else if (index == 3) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HistoriaPage(),
                        settings: const RouteSettings(arguments: 'História Mexicana'),
                      ),
                    );
                  }
                },
                children: [
                  Image.asset('img/culinaria.jpg', fit: BoxFit.cover),
                  Image.asset('img/cultura.jpg', fit: BoxFit.cover),
                  Image.asset('img/geografia.jpg', fit: BoxFit.cover),
                  Image.asset('img/historia.jpg', fit: BoxFit.cover),
                ],
              ),
            ),

            const SizedBox(height: 40),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "DESENVOLVEDORES",
                style: TextStyle(
                  fontSize: 35,              
                  fontWeight: FontWeight.bold, 
                  color: Colors.black87,      
                ),
              ),
            ),

            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0), 
              child: Row(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12), 
                      child: Image.asset(
                        'img/lucas.jpg',
                        height: 300,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16), 
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        'img/guilherme.jpg',
                        height: 300,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}