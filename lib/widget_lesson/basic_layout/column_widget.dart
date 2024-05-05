import 'package:flutter/material.dart';

class columnWidget extends StatelessWidget {
  const columnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column Widget'),
      ),
       body: Container(
        padding: const EdgeInsets.all(10.0),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Stylish Chair',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ), SizedBox(height: 10,),
            Text('rp 30000',
            style: TextStyle(
              fontSize: 20,
              color: Color(0xFF9A9390),
              fontWeight: FontWeight.w400,
              letterSpacing: 1.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}