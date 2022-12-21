// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/the_user_is_in_the_fluttercode_project_directory.dart';
import './step/there_is_at_least_one_file_in_the_directory.dart';
import './step/the_user_clicks_the_edit_file_button.dart';
import './step/the_user_selects_the_file_to_edit_from_the_list_of_available_files.dart';
import './step/the_user_makes_changes_to_the_contents_of_the_file_in_the_editor.dart';
import './step/the_user_clicks_the_save_button.dart';
import './step/the_changes_to_the_file_are_saved_in_the_fluttercode_project_directory.dart';

void main() {
  group('''Edit file''', () {
    testWidgets('''User edits the contents of a file within the FlutterCode project directory''', (tester) async {
      await theUserIsInTheFluttercodeProjectDirectory(tester);
      await thereIsAtLeastOneFileInTheDirectory(tester);
      await theUserClicksTheEditFileButton(tester);
      await theUserSelectsTheFileToEditFromTheListOfAvailableFiles(tester);
      await theUserMakesChangesToTheContentsOfTheFileInTheEditor(tester);
      await theUserClicksTheSaveButton(tester);
      await theChangesToTheFileAreSavedInTheFluttercodeProjectDirectory(tester);
    });
  });
}
