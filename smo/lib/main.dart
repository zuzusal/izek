import 'package:flutter/material.dart';
import 'haberler_page.dart';
import 'duyurular_page.dart';
import 'etkinlikler_page.dart';
import 'proje_hesaplama_page.dart';
import 'ozgecmis_page.dart';
import 'is_ilanlari_page.dart';
import 'yonetmelikler_page.dart';
import 'dergi_page.dart';
import 'sponsorlar_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Wait for 3 seconds and then navigate to HomePage
    Future.delayed(const Duration(seconds: 3)).then((_) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/flutter_logo.png'),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> _pageList = [
    {'icon': Icons.new_releases, 'title': 'Haberler', 'page': HaberlerPage()},
    {'icon': Icons.announcement, 'title': 'Duyurular', 'page': DuyurularPage()},
    {
      'icon': Icons.event,
      'title': 'Etkinlikler',
      'page': const EtkinliklerPage(etkinlikler: [])
    },
    {
      'icon': Icons.calculate,
      'title': 'Proje Hesaplama',
      'page': const ProjeHesaplamaPage()
    },
    {'icon': Icons.person, 'title': 'Özgeçmiş', 'page': const OzgecmisPage()},
    {'icon': Icons.work, 'title': 'İş İlanları', 'page': IsIlanlariPage()},
    {
      'icon': Icons.library_books,
      'title': 'Yönetmelikler',
      'page': const YonetmeliklerPage()
    },
    {'icon': Icons.spa, 'title': 'Dergi', 'page': const DergiPage()},
    {'icon': Icons.people, 'title': 'Sponsorlar', 'page': SponsorlarPage()},
  ];

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ana Sayfa'),
        backgroundColor: Colors.green[800],
      ),
      body: ListView.builder(
        itemCount: _pageList.length,
        itemBuilder: (BuildContext context, int index) {
          final page = _pageList[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: ListTile(
              leading: Icon(page['icon']),
              title: Text(page['title']),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => page['page']));
              },
            ),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.green[800],
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'VRLabs © 2023',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              // GestureDetector(
              //   onTap: () {
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //             builder: (context) => SponsorlarPage()));
              //   },
              //   child: Container(
              //     decoration: BoxDecoration(
              //       color: Colors.white,
              //       borderRadius: BorderRadius.circular(16),
              //       boxShadow: [
              //         BoxShadow(
              //           color: Colors.grey.withOpacity(0.5),
              //           spreadRadius: 1,
              //           blurRadius: 4,
              //           offset: const Offset(0, 2),
              //         ),
              //       ],
              //     ),
              //     child: Padding(
              //       padding: const EdgeInsets.all(8.0),
              //       child: Text(
              //         'Sponsorlar',
              //         style:
              //             TextStyle(fontSize: 16, color: Colors.green[800]),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
