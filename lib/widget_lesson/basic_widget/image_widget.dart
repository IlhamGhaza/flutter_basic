import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Image.network(
              "https://i.ibb.co/PGv8ZzG/me.jpg",
              height: 200,
              width: 200,
            ),
            Image.asset(
              "assets/images/splash1.png",
              height: 200,
              width: 200,
            ),
          ],
        ),
      ),
    );
  }
}