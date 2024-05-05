import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class centerWidget extends StatelessWidget {
  const centerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Center Widget'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child : Column(
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),
                ), shadowColor: Colors.grey[20], elevation : 5.0,),
                child: Text('add to cart'.toUpperCase(),
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  color : Colors.white,
                   ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}