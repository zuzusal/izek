import 'package:flutter/material.dart';

class IletisimPage extends StatelessWidget {
  const IletisimPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('İletişim'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Adres:',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text('1234 Caddesi, No: 56/A'),
                    Text('Ankara / Türkiye'),
                    SizedBox(height: 16),
                    Text(
                      'Telefon:',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text('+90 (312) 555 55 55'),
                    SizedBox(height: 16),
                    Text(
                      'E-posta:',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text('info@ornek.com'),
                  ],
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () => _showDialog(context),
              child: Text('Bize Ulaşın'),
            ),
          ],
        ),
      ),
    );
  }

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Bize Ulaşın'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Adınız ve soyadınız:'),
                TextField(),
                SizedBox(height: 16),
                Text('E-posta adresiniz:'),
                TextField(),
                SizedBox(height: 16),
                Text('Mesajınız:'),
                TextField(
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Gönder'),
              onPressed: () {
                // Mesajı gönderme işlemleri burada yapılabilir.
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('İptal'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
