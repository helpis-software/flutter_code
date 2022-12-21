// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/the_user_is_in_the_fluttercode_project_directory.dart';
import './step/there_is_at_least_one_directory_in_the_directory.dart';
import './step/the_user_clicks_the_rename_directory_button.dart';
import './step/the_user_selects_the_directory_to_rename_from_the_list_of_available_directories.dart';
import './step/the_user_enters_a_new_name_for_the_directory_in_the_input_field.dart';
import './step/the_user_clicks_the_submit_button.dart';
import './step/the_selected_directory_is_renamed_to_the_entered_name_in_the_fluttercode_project_directory.dart';

void main() {
  group('''Rename directory''', () {
    testWidgets('''User renames an existing directory within the FlutterCode project directory''', (tester) async {
      await theUserIsInTheFluttercodeProjectDirectory(tester);
      await thereIsAtLeastOneDirectoryInTheDirectory(tester);
      await theUserClicksTheRenameDirectoryButton(tester);
      await theUserSelectsTheDirectoryToRenameFromTheListOfAvailableDirectories(tester);
      await theUserEntersANewNameForTheDirectoryInTheInputField(tester);
      await theUserClicksTheSubmitButton(tester);
      await theSelectedDirectoryIsRenamedToTheEnteredNameInTheFluttercodeProjectDirectory(tester);
    });
  });
}
