// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/the_user_is_in_the_fluttercode_editor.dart';
import './step/the_user_has_made_changes_to_a_file_in_the_editor.dart';
import './step/the_user_clicks_the_save_file_button.dart';
import './step/the_changes_to_the_file_are_saved_in_the_fluttercode_project_directory.dart';

void main() {
  group('''Save file''', () {
    testWidgets('''User saves changes to a file in the FlutterCode editor''', (tester) async {
      await theUserIsInTheFluttercodeEditor(tester);
      await theUserHasMadeChangesToAFileInTheEditor(tester);
      await theUserClicksTheSaveFileButton(tester);
      await theChangesToTheFileAreSavedInTheFluttercodeProjectDirectory(tester);
    });
  });
}
