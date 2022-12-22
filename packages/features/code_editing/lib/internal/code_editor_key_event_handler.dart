import 'package:flutter/material.dart';

class CodeEditor {
  CodeEditor() : _textController = TextEditingController();
  final TextEditingController _textController;

  void clear() {
    _textController.clear();
  }

  void handleTabKeyEvent(final TextSelection selection) {
    final String text = _textController.text;
    final int offset = _textController.selection.extentOffset;
    const String tabSpace = '    ';
    final String currentLine = text.substring(0, offset).split('\n').last;
    final String prefix = currentLine.startsWith(tabSpace) ? '\n' : tabSpace;
    _textController
      ..text = '${text.substring(0, offset)}$prefix${text.substring(offset)}'
      ..selection = selection.copyWith(
        baseOffset: offset + prefix.length,
        extentOffset: offset + prefix.length,
      );
  }

  void handleReturnKeyEvent(final TextSelection selection) {
    final String text = _textController.text;
    final int offset = _textController.selection.extentOffset;
    final String currentLine = text.substring(0, offset).split('\n').last;
    final String prefix =
        currentLine.startsWith(' ') ? currentLine.split(' ').first : '';
    _textController
      ..text = '${text.substring(0, offset)}$prefix\n${text.substring(offset)}'
      ..selection = selection.copyWith(
        baseOffset: offset + prefix.length + 1,
        extentOffset: offset + prefix.length + 1,
      );
  }
}
