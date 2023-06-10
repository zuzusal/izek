import 'package:flutter/material.dart';

class OzgecmisPage extends StatelessWidget {
  const OzgecmisPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Özgeçmiş'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.work_off_outlined, size: 100),
            const SizedBox(height: 20),
            const Text(
              'Bu sayfa yapım aşamasındadır.',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Uyarı'),
                      content:
                          const Text('Özgeçmiş sayfası henüz hazır değil!'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('Tamam'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text(
                'Göster',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey[600],
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
