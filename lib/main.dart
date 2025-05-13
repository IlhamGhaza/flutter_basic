import 'package:flutter/material.dart';
import 'package:flutter_basic/widget_lesson/basic_layout/center_widget.dart';
import 'package:flutter_basic/widget_lesson/navigation/sliver_widget.dart';

import 'widget_lesson/basic_form/dialog_wodget.dart';
import 'widget_lesson/basic_form/form_widget.dart';
import 'widget_lesson/basic_layout/column_widget.dart';
import 'widget_lesson/basic_layout/listview_widget .dart';
import 'widget_lesson/basic_layout/row_widget.dart';
import 'widget_lesson/basic_widget/button_widget.dart';
import 'widget_lesson/basic_widget/circle_avatar_widget.dart';
import 'widget_lesson/basic_widget/container_widget.dart';
import 'widget_lesson/basic_widget/icon_widget.dart';
import 'widget_lesson/basic_widget/image_widget.dart';
import 'widget_lesson/basic_widget/text_widget.dart';
import 'widget_lesson/statefull_sample/stateless_statefull_widget.dart';

void main() {
  // This line initializes Flutter's core system
  // It's important to call this before doing certain operations
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DialogWiget(),
      // home: FormWidget(),
    );
  }
}

class ChangeTimeWidget extends StatefulWidget {
  const ChangeTimeWidget({super.key});

  @override
  State<ChangeTimeWidget> createState() => _ChangeTimeWidgetState();
}

class _ChangeTimeWidgetState extends State<ChangeTimeWidget> {
  DateTime time = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Time: $time'),
        ElevatedButton(
          onPressed: () {
            time = DateTime.now();
            setState(() {});
          },
          child: const Text('Update Time'),
        ),
      ],
    );
  }
}

class ShowTextWidget extends StatelessWidget {
  final String text;
  const ShowTextWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
