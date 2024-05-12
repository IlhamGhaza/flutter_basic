import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Icon"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: const Column(
          children: [
            Icon(
              Icons.favorite,
              color: Colors.red,
              size: 50,
            ),
            Icon(
              Icons.star,
              color: Colors.yellow,
              size: 50,
            ),
            Icon(
              Icons.home,
              color: Colors.blue,
              size: 50,
            ),
            Icon(
              Icons.share,
              size: 32.0,
            ),
            Icon(Icons.access_alarm, size: 50, color: Colors.grey,),
          ],
        ),
      ),
    );
  }
}