
import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PPBM2 - Row'),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Row(
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
    ));
  }
}