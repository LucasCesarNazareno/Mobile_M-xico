import 'package:flutter/material.dart';

class HistoriaPage extends StatelessWidget {
  const HistoriaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final String tituloRecebido = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text(tituloRecebido),
        backgroundColor: const Color(0xFF006341),
        foregroundColor: Colors.white,
        elevation: 1,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView( 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
            SizedBox(
              width: double.infinity, 
              height: 250,            
              child: Image.asset(
                'img/historia.jpg',
                fit: BoxFit.cover,    
              ),
            ),

            const SizedBox(height: 20),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Center(
                child: Text(
                  "HISTÓRIA",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32, 
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
            
            Center(
              child: Transform.translate(
                offset: const Offset(0, -20),
                child: Image.asset(
                  'img/bigode.png',
                  width: 100,
                  height: 50,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            
            const SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFC8102E),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      padding: const EdgeInsets.all(12.0),
                      child: const Text(
                        "Muito antes da chegada dos europeus, o território mexicano era ocupado por maias, astecas e toltecas. Esses povos desenvolveram conhecimentos avançados em matemática, astronomia, arquitetura e agricultura.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          height: 1.4,
                        ),
                      ),
                    ),
                  ),
                  
                  const SizedBox(width: 10),
                  
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'img/asteca.png',
                      width: 180,
                      height: 180,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),

            Center(
              child: Transform.translate(
                offset: const Offset(0, -130), 
                child: Image.asset(
                  'img/templo.png',
                  width: 400,
                  height: 400,
                  fit: BoxFit.contain,
                ),
              ),
            ),

            Transform.translate(
              offset: const Offset(0, -270),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [                  
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        'img/monumento.png',
                        width: 180,
                        height: 180,
                        fit: BoxFit.cover,
                      ),
                    ),

                    const SizedBox(width: 10),

                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFFC8102E),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding: const EdgeInsets.all(12.0),
                        child: const Text(
                          "Entre 1519 e 1521, o conquistador espanhol Hernán Cortés derrotou o Império Asteca, iniciando a colonização espanhola. O território passou a fazer parte do Vice-Reino da Nova Espanha.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            height: 1.4,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Center(
              child: Transform.translate(
                offset: const Offset(0, -400),
                child: Image.asset(
                  'img/simbolo.png',
                  width: 400,
                  height: 400,
                  fit: BoxFit.contain,
                ),
              ),
            ),

            Transform.translate(
              offset: const Offset(0, -540),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFFC8102E),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding: const EdgeInsets.all(12.0),
                        child: const Text(
                          "A independência do México começou a ser conquistada em 1810 e foi consolidada em 1821. Em 1824, o país tornou-se oficialmente uma república. Em 1846 ocorreu a Guerra do México contra os Estados Unidos. Após a derrota, o país perdeu grande parte de seu território, incluindo regiões que atualmente pertencem aos estados norte-americanos do Texas, Califórnia, Nevada, Utah e Novo México.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            height: 1.4,
                          ),
                        ),
                      ),
                    ),
                    
                    const SizedBox(width: 10),
                    
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        'img/guerra.jpg',
                        width: 180,
                        height: 180,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );  
  }
}