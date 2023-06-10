import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Sponsor {
  final String firmaAdi;
  final String logoUrl;

  Sponsor({required this.firmaAdi, required this.logoUrl});
}

class SponsorlarPage extends StatelessWidget {
  final List<Sponsor> _sponsorlar = [
    Sponsor(
        firmaAdi: "ABC Şirketi",
        logoUrl: "https://www.example.com/images/abc_logo.png"),
    Sponsor(
        firmaAdi: "XYZ İşletmesi",
        logoUrl: "https://www.example.com/images/xyz_logo.png"),
    Sponsor(
        firmaAdi: "123 Ltd.",
        logoUrl: "https://www.example.com/images/123_logo.png")
  ];

  SponsorlarPage({Key? key});

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sponsorlar'),
      ),
      body: ListView.builder(
        itemCount: _sponsorlar.length,
        itemBuilder: (BuildContext context, int index) {
          final sponsor = _sponsorlar[index];
          return CustomListItem(
            leading: Image.network(sponsor.logoUrl),
            title: Text(sponsor.firmaAdi),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              _launchURL("https://www.${sponsor.firmaAdi.toLowerCase()}.com");
            },
          );
        },
      ),
    );
  }
}

class CustomListItem extends StatelessWidget {
  final Widget leading;
  final Widget title;
  final Widget trailing;
  final VoidCallback onTap;

  CustomListItem({
    required this.leading,
    required this.title,
    required this.trailing,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
        child: Row(
          children: [
            leading,
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: title,
              ),
            ),
            trailing,
          ],
        ),
      ),
    );
  }
}
