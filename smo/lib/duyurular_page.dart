import 'package:flutter/material.dart';

class Duyuru {
  final String baslik;
  final String aciklama;
  final String tarih;

  Duyuru({required this.baslik, required this.aciklama, required this.tarih});
}

class DuyurularPage extends StatelessWidget {
  final List<Duyuru> duyurular = [
    Duyuru(
      baslik: 'Lorem Ipsum Dolor Sit Amet',
      aciklama:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed faucibus enim ut turpis pellentesque, eget consectetur mauris bibendum. Donec eget pulvinar nisl.',
      tarih: '1 Haziran 2023',
    ),
    Duyuru(
      baslik: 'Sed Do Eiusmod Tempor Incididunt',
      aciklama:
          'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
      tarih: '28 Mayıs 2023',
    ),
    // Diğer duyurular burada yer alabilir
  ];

  DuyurularPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Duyurular'),
        backgroundColor: Colors.green[800],
      ),
      body: ListView.builder(
        itemCount: duyurular.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              duyurular[index].baslik,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 4.0),
                Text(duyurular[index].aciklama),
                const SizedBox(height: 4.0),
                Text(
                  'Tarih: ${duyurular[index].tarih}',
                  style: TextStyle(fontSize: 12.0, color: Colors.grey[600]),
                ),
              ],
            ),
            onTap: () {
              // Duyuru detay sayfasına yönlendirme kodu buraya gelebilir
            },
          );
        },
      ),
    );
  }
}
