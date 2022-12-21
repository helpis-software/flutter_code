// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/the_user_is_in_the_fluttercode_project_directory.dart';
import './step/there_are_multiple_files_in_the_directory.dart';
import './step/the_user_clicks_the_search_file_button.dart';
import './step/the_user_enters_the_name_or_partial_name_of_the_file_to_search_for_in_the_input_field.dart';
import './step/the_user_clicks_the_submit_button.dart';
import './step/the_fluttercode_editor_displays_a_list_of_files_that_match_the_search_criteria.dart';

void main() {
  group('''Search file''', () {
    testWidgets('''User searches for a specific file within the FlutterCode project directory''', (tester) async {
      await theUserIsInTheFluttercodeProjectDirectory(tester);
      await thereAreMultipleFilesInTheDirectory(tester);
      await theUserClicksTheSearchFileButton(tester);
      await theUserEntersTheNameOrPartialNameOfTheFileToSearchForInTheInputField(tester);
      await theUserClicksTheSubmitButton(tester);
      await theFluttercodeEditorDisplaysAListOfFilesThatMatchTheSearchCriteria(tester);
    });
  });
}
