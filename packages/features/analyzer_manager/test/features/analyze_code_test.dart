// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/the_user_is_in_the_fluttercode_editor.dart';
import './step/the_user_has_opened_a_file_in_the_editor.dart';
import './step/the_user_clicks_the_analyze_code_button.dart';
import './step/the_fluttercode_editor_runs_the_dart_analyzer_on_the_open_file.dart';
import './step/any_warnings_or_errors_found_by_the_analyzer_are_highlighted_in_the_editor.dart';

void main() {
  group('''Analyze code''', () {
    testWidgets('''FlutterCode editor runs the Dart analyzer on a file and highlights any warnings or errors''', (tester) async {
      await theUserIsInTheFluttercodeEditor(tester);
      await theUserHasOpenedAFileInTheEditor(tester);
      await theUserClicksTheAnalyzeCodeButton(tester);
      await theFluttercodeEditorRunsTheDartAnalyzerOnTheOpenFile(tester);
      await anyWarningsOrErrorsFoundByTheAnalyzerAreHighlightedInTheEditor(tester);
    });
  });
}
