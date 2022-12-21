// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/the_user_is_in_the_fluttercode_project_directory.dart';
import './step/the_user_clicks_the_create_file_button.dart';
import './step/the_user_enters_a_name_for_the_new_file_in_the_input_field.dart';
import './step/the_user_clicks_the_submit_button.dart';
import './step/a_new_file_with_the_entered_name_is_created_in_the_fluttercode_project_directory.dart';

void main() {
  group('''Create file''', () {
    testWidgets('''User creates a new file within the FlutterCode project directory''', (tester) async {
      await theUserIsInTheFluttercodeProjectDirectory(tester);
      await theUserClicksTheCreateFileButton(tester);
      await theUserEntersANameForTheNewFileInTheInputField(tester);
      await theUserClicksTheSubmitButton(tester);
      await aNewFileWithTheEnteredNameIsCreatedInTheFluttercodeProjectDirectory(tester);
    });
  });
}
