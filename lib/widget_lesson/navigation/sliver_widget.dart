import 'package:flutter/material.dart';

class SilverWidget extends StatefulWidget {
  const SilverWidget({super.key});

  @override
  State<SilverWidget> createState() => _SilverWidgetState();
}

class _SilverWidgetState extends State<SilverWidget> {
  bool pinned = false;
  bool snap = false;
  bool floating = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Silver nav"),
        actions: const[],
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: pinned,
            snap: snap,
            floating: floating,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('Silver app bar'),
              background: FlutterLogo(),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, index) {
                return Container(
                  color: index.isOdd ? Colors.white : Colors.blue[200],
                  height: 100.0,
                  child: Center(
                    child: Text(
                    '$index',
                    textScaleFactor: 5,
                    ),
                  )
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}