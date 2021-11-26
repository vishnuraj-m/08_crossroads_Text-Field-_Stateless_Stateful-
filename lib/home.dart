import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _textController = TextEditingController();
  String _displayText = 'Text Will be display Here';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.grey,
            child: Column(
              children: [
                TextField(
                  controller: _textController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Type Here',
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _displayText = _textController.text;
                    });
                    print(_textController.text);
                  },
                  child: Text('Click Me'),
                ),
                Text(_displayText)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
