import 'package:flutter/material.dart';

class Haber {
  final String fotoUrl;
  final String baslik;
  final String aciklama;

  Haber({required this.fotoUrl, required this.baslik, required this.aciklama});
}

class HaberlerPage extends StatelessWidget {
  final List<Haber> haberler = [
    Haber(
      fotoUrl: 'https://picsum.photos/200',
      baslik: 'Lorem Ipsum Dolor Sit Amet',
      aciklama: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    ),
    Haber(
      fotoUrl: 'https://picsum.photos/200',
      baslik: 'Sed Do Eiusmod Tempor Incididunt',
      aciklama:
          'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    ),
    // Diğer haberler burada yer alabilir
  ];

  HaberlerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Haberler'),
        backgroundColor: Colors.green[800],
      ),
      body: ListView.builder(
        itemCount: haberler.length,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(haberler[index].fotoUrl),
              const SizedBox(height: 8.0),
              Text(
                haberler[index].baslik,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8.0),
              Text(haberler[index].aciklama),
              const SizedBox(height: 16.0),
            ],
          );
        },
      ),
    );
  }
}
