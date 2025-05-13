import 'package:flutter/material.dart';

import '../../core/snackbar_utils.dart';

class StatelessStatefulWidget extends StatefulWidget {
  const StatelessStatefulWidget({super.key});

  @override
  State<StatelessStatefulWidget> createState() =>
      _StatelessStatefulWidgetState();
}

class _StatelessStatefulWidgetState extends State<StatelessStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PPBM2 - stateless stateful"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [
              ShowText(text: 'Show Text Stateless'),
              ChangeTextWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class ChangeTextWidget extends StatefulWidget {
  const ChangeTextWidget({super.key});

  @override
  State<ChangeTextWidget> createState() => _ChangeTextWidgetState();
}

class _ChangeTextWidgetState extends State<ChangeTextWidget> {
  String text = 'PPBM2';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('$text - Stateful'),
        ElevatedButton(
          onPressed: () {
            String newText = DateTime.now().toIso8601String();
            setState(() {
              text = newText;
            });
            SnackbarUtils(
              text: '$text - Stateful',
              backgroundColor: Colors.green,
            ).showSuccessSnackBar(context, actionLabel: 'UNDO',
                onActionPressed: () {
              setState(() {
                text = 'PPBM2';
              });
            });
          },
          child: const Text('Change Text'),
        )
      ],
    );
  }
}

class ShowText extends StatelessWidget {
  final String text;
  const ShowText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
