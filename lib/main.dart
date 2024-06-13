import 'package:flutter/material.dart';
import 'package:ui_flutter/home.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HalamanPertama(),
    );
  }
}

class HalamanPertama extends StatelessWidget {
  const HalamanPertama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Spacer(),
            Center(
              child: Column(
                children: [
                  // untuk gambar logo
                  Image.asset(
                    'assets/logo.png',
                    width: 300,
                    height: 300,
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Home()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
                  textStyle: const TextStyle(fontSize: 20),
                ),
                child: const Text('Get Started'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
