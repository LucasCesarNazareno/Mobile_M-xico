import 'package:flutter/material.dart';

class GeografiaPage extends StatelessWidget {
  const GeografiaPage({super.key});

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
                'img/geografia.jpg',
                fit: BoxFit.cover,    
              ),
            ),

            const SizedBox(height: 20),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Center(
                child: Text(
                  "GEOGRAFIA",
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
                        "O México faz fronteira ao norte com os Estados Unidos e ao sul com Guatemala e Belize. É banhado pelo Oceano Pacífico, pelo Golfo do México e pelo Mar do Caribe. Seu território é predominantemente montanhoso, com cerca de 70% formado por serras, planaltos e áreas vulcânicas. Entre as principais formações estão a Sierra Madre Ocidental, a Sierra Madre Oriental e o Planalto Mexicano.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          height: 1.4,
                        ),
                      ),
                    ),
                  ),
                  
                  const SizedBox(width: 8),
                  
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'img/mapa.jpg',
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
                offset: const Offset(0, 0), 
                child: Image.asset(
                  'img/pais.png',
                  width: 200,
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ),
            ),

            Transform.translate(
              offset: const Offset(0, 0),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [                  
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        'img/clima.png',
                        width: 180,
                        height: 180,
                        fit: BoxFit.cover,
                      ),
                    ),

                    const SizedBox(width: 8),

                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFFC8102E),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding: const EdgeInsets.all(12.0),
                        child: const Text(
                          "O clima mexicano varia bastante devido à sua grande extensão territorial. No norte predominam os climas árido e semiárido, onde se localizam os desertos de Sonora e Chihuahua. Já no sul predominam os climas tropical e equatorial, com temperaturas elevadas e florestas tropicais. Nas regiões montanhosas, a altitude torna o clima mais ameno.",
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
                offset: const Offset(0, 0), 
                child: Image.asset(
                  'img/rosa.png',
                  width: 200,
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ),
            ),

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
                        "O México possui aproximadamente 130 milhões de habitantes. A maior parte da população é formada por mestiços, resultado da mistura entre indígenas e europeus. Também vivem no país diversos povos indígenas, como os maias, astecas, zapotecas e outros, além de descendentes de espanhóis, afrodescendentes e pequenas comunidades asiáticas.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          height: 1.4,
                        ),
                      ),
                    ),
                  ),
                  
                  const SizedBox(width: 8),
                  
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'img/populacao.jpg',
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
                offset: const Offset(0, 0), 
                child: Image.asset(
                  'img/globo.jpg',
                  width: 200,
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ),
            ),

            Transform.translate(
              offset: const Offset(0, 0),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [                  
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        'img/politica.png',
                        width: 180,
                        height: 180,
                        fit: BoxFit.cover,
                      ),
                    ),

                    const SizedBox(width: 8),

                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFFC8102E),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding: const EdgeInsets.all(12.0),
                        child: const Text(
                          "O México é uma República Federal Presidencialista, composta por 31 estados e pela Cidade do México, que é a capital do país. O governo é dividido nos poderes Executivo, Legislativo e Judiciário, sendo o presidente eleito pelo voto popular.",
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
                offset: const Offset(0, 0), 
                child: Image.asset(
                  'img/minimapa.jpg',
                  width: 200,
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ),
            ),

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
                        "A economia mexicana é uma das maiores da América Latina. Suas principais atividades econômicas são a indústria automobilística, a produção de petróleo, a agricultura, o turismo e o comércio internacional, principalmente com os Estados Unidos.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          height: 1.4,
                        ),
                      ),
                    ),
                  ),
                  
                  const SizedBox(width: 8),
                  
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'img/economia.jpg',
                      width: 180,
                      height: 180,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );  
  }
}