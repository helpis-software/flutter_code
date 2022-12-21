// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/the_user_is_in_the_fluttercode_project_directory.dart';
import './step/there_is_at_least_one_file_in_the_directory.dart';
import './step/the_user_clicks_the_move_file_button.dart';
import './step/the_user_selects_the_file_to_move_from_the_list_of_available_files.dart';
import './step/the_user_enters_a_new_location_for_the_file_in_the_input_field.dart';
import './step/the_user_clicks_the_submit_button.dart';
import './step/the_selected_file_is_moved_to_the_new_location_in_the_fluttercode_project_directory.dart';

void main() {
  group('''Move file''', () {
    testWidgets('''User moves a file from one location to another within the FlutterCode project directory''', (tester) async {
      await theUserIsInTheFluttercodeProjectDirectory(tester);
      await thereIsAtLeastOneFileInTheDirectory(tester);
      await theUserClicksTheMoveFileButton(tester);
      await theUserSelectsTheFileToMoveFromTheListOfAvailableFiles(tester);
      await theUserEntersANewLocationForTheFileInTheInputField(tester);
      await theUserClicksTheSubmitButton(tester);
      await theSelectedFileIsMovedToTheNewLocationInTheFluttercodeProjectDirectory(tester);
    });
  });
}
