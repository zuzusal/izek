import 'package:flutter/material.dart';

class YonetmeliklerPage extends StatelessWidget {
  const YonetmeliklerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Yönetmelikler'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.library_books_outlined, size: 100),
            SizedBox(height: 20),
            Text(
              'Bu sayfa yapım aşamasındadır.',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
