import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {
  const Home();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              margin: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'Hi, K!',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontStyle:FontStyle.italic,
                      ),
                    ),
                  ),
                  Spacer(),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/karina.jpg'),
                    radius: 25,
                  ),
                  SizedBox(width: 14.0),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Tempat Favorit',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  SizedBox(width: 16),
                  GambarCard(pathImage: 'assets/pantai.jpg'),
                  GambarCard(pathImage: 'assets/gaming.jpg'),
                  GambarCard(pathImage: 'assets/glamping.jpg'),
                  GambarCard(pathImage: 'assets/waterboom.jpg'),
                  GambarCard(pathImage: 'assets/winter.jpg'),
                  SizedBox(width: 16),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GambarCard extends StatelessWidget {
  final String pathImage;
  const GambarCard({required this.pathImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: const EdgeInsets.only(right: 16, bottom: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.asset(
          pathImage,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
