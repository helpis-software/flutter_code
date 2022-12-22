import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  // Declare the TextEditingController
  late TextEditingController _textEditingController;

  void clearText() {
    _textEditingController.clear();
  }

  @override
  void initState() {
    super.initState();

    // Initialize the TextEditingController
    _textEditingController = TextEditingController();
  }

  @override
  Widget build(final BuildContext context) => TextField(
      // Assign the TextEditingController to the TextField's controller property
      controller: _textEditingController,
      // Add a listener to the TextField's onChanged property to update the
      // TextEditingController's text property whenever the text in the TextField
      // is changed by the user
      onChanged: (final String text) {
        _textEditingController.text = text;
      },
    );

  @override
  void dispose() {
    // Dispose of the TextEditingController when the widget is disposed
    _textEditingController.dispose();
    super.dispose();
  }
}
