import 'package:flutter/material.dart';

class CulturaPage extends StatelessWidget {
  const CulturaPage({super.key});

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
                'img/cultura.jpg',
                fit: BoxFit.cover,    
              ),
            ),

            const SizedBox(height: 20),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Center(
                child: Text(
                  "CULTURA",
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
                        "A cultura mexicana é resultado da mistura entre as traditions indígenas e a herança espanhola. Os povos maias e astecas deixaram importantes contribuições para a arte, a arquitetura, a culinária e as tradições do país. Durante a colonização, os espanhóis também influenciaram fortemente os costumes mexicanos. Atualmente, a cultura dos Estados Unidos também exerce influência devido à globalização.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          height: 1.4,
                        ),
                      ),
                    ),
                  ),
                  
                  const SizedBox(width: 0),
                  
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'img/danca.png',
                      width: 180,
                      height: 180,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 0),

            Center(
              child: Transform.translate(
                offset: const Offset(0, -20), 
                child: Image.asset(
                  'img/cacto.png',
                  width: 200,
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ),
            ),

            Transform.translate(
              offset: const Offset(0, -60),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [                  
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        'img/caveira.png',
                        width: 180,
                        height: 180,
                        fit: BoxFit.cover,
                      ),
                    ),

                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFFC8102E),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding: const EdgeInsets.all(12.0),
                        child: const Text(
                          "O México é conhecido por suas festas tradicionais, como o Dia dos Mortos, pela música mariachi, pelas danças folclóricas e pelo artesanato colorido. Seu patrimônio histórico e cultural atrai milhões de turistas todos os anos.",
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
          ],
        ),
      ),
    );  
  }
}