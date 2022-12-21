// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/the_user_is_in_the_fluttercode_editor.dart';
import './step/the_user_has_opened_a_file_in_the_editor.dart';
import './step/the_user_clicks_the_save_file_as_button.dart';
import './step/the_user_enters_a_new_name_for_the_file_in_the_input_field.dart';
import './step/the_user_clicks_the_submit_button.dart';
import './step/a_copy_of_the_file_with_the_new_name_is_saved_in_the_fluttercode_project_directory.dart';

void main() {
  group('''Save file as''', () {
    testWidgets('''User saves a copy of a file with a different name in the FlutterCode editor''', (tester) async {
      await theUserIsInTheFluttercodeEditor(tester);
      await theUserHasOpenedAFileInTheEditor(tester);
      await theUserClicksTheSaveFileAsButton(tester);
      await theUserEntersANewNameForTheFileInTheInputField(tester);
      await theUserClicksTheSubmitButton(tester);
      await aCopyOfTheFileWithTheNewNameIsSavedInTheFluttercodeProjectDirectory(tester);
    });
  });
}
