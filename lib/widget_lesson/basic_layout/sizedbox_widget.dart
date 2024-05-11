import 'package:flutter/material.dart';

class SizedBoxWidget extends StatelessWidget {
  const SizedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SizedBox'),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17.0)
                ),
                child: IconButton(
                  icon: const Icon(Icons.arrow_back_ios),
                  onPressed: () {},
                ),
            ),
            const Text(
              "details",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.normal
              ),
            ),
            IconButton(
              onPressed: (){}, 
              icon: const Icon(Icons.share, size: 32.0,
              )
            )
          ],
        ),
      )
    );
  }
}