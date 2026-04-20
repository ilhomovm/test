import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  final Uri telegramUri = Uri.parse(
    'https://drive.google.com/file/d/1PMyuDN2foykoCHhaqyJaCgd86YHH2onG/view',
  );
  HomePage({super.key});

  Future<void> openLink(Uri url) async {
    if (!await launchUrl(url)) {
      throw 'Link ochilmadi $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => openLink(telegramUri),
          child: Text("Link"),
        ),
      ),
    );
  }
}
