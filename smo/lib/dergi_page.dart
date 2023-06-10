import 'package:flutter/material.dart';

class DergiPage extends StatelessWidget {
  const DergiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dergi'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.book_outlined, size: 100),
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
