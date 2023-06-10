import 'package:flutter/material.dart';

class IsIlani {
  final String isYeriIsmi;
  final String telefon;
  final String adres;
  final String aciklama;

  IsIlani(
      {required this.isYeriIsmi,
      required this.telefon,
      required this.adres,
      required this.aciklama});
}

class IsIlanlariPage extends StatelessWidget {
  final List<IsIlani> _isilanlari = [
    IsIlani(
        isYeriIsmi: "ABC Şirketi",
        telefon: "555-1234",
        adres: "İstanbul",
        aciklama:
            "ABC Şirketi olarak deneyimli bir yazılım geliştirici aramaktayız."),
    IsIlani(
        isYeriIsmi: "XYZ İşletmesi",
        telefon: "555-5678",
        adres: "Ankara",
        aciklama:
            "XYZ İşletmesi olarak önde gelen bir tasarım uzmanı arayışındayız."),
    IsIlani(
        isYeriIsmi: "123 Ltd.",
        telefon: "555-9876",
        adres: "İzmir",
        aciklama:
            "123 Ltd. olarak web geliştirme alanında çalışacak bir elemana ihtiyacımız var.")
  ];

  IsIlanlariPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('İş İlanları'),
      ),
      body: ListView.builder(
        itemCount: _isilanlari.length,
        itemBuilder: (BuildContext context, int index) {
          final ilan = _isilanlari[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ilan.isYeriIsmi,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const SizedBox(height: 5),
                Text(ilan.telefon),
                const SizedBox(height: 5),
                Text(ilan.adres),
                const SizedBox(height: 10),
                Text(ilan.aciklama),
              ],
            ),
          );
        },
      ),
    );
  }
}
