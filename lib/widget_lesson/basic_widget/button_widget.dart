import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PPBM2 - Button"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          spacing: 10,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                shadowColor: Colors.grey[20],
                elevation: 5.0,
              ),
              child: Text(
                "Add To Cart".toUpperCase(),
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text('Text Button'),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text('Outlined Button'),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite),
            ),
            FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.add),
            ),
            ToggleButtons(
              isSelected: [true, false, false],
              onPressed: (int index) {},
              children: [
                Icon(Icons.format_bold),
                Icon(Icons.format_italic),
                Icon(Icons.format_underline),
              ],
            )
          ],
        ),
      ),
    );
  }
}
