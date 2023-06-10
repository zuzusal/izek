import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjeHesaplamaPage extends StatelessWidget {
  final String url = "http://www.mo.org.tr/enazbedel/";

  const ProjeHesaplamaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Proje Hesaplama Sayfası'),
      ),
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () async {
            if (await canLaunchUrl(Uri.parse(url))) {
              await launchUrl(Uri.parse(url));
            } else {
              throw 'Could not launch $url';
            }
          },
          icon: const Icon(Icons.calculate),
          label: const Text('Proje Hesapla'),
        ),
      ),
    );
  }
}
