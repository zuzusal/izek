import 'package:flutter/material.dart';

class EtkinliklerPage extends StatelessWidget {
  final List<String> etkinlikler;

  const EtkinliklerPage({Key? key, required this.etkinlikler})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Etkinlikler'),
      ),
      body: ListView.builder(
        itemCount: etkinlikler.length,
        itemBuilder: (BuildContext context, int index) {
          final etkinlik = etkinlikler[index];
          return ListTile(
            title: Text(etkinlik),
          );
        },
      ),
    );
  }
}
