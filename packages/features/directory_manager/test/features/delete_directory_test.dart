// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/the_user_is_in_the_fluttercode_project_directory.dart';
import './step/there_is_at_least_one_directory_in_the_directory.dart';
import './step/the_user_clicks_the_delete_directory_button.dart';
import './step/the_user_selects_the_directory_to_delete_from_the_list_of_available_directories.dart';
import './step/the_user_clicks_the_submit_button.dart';
import './step/the_selected_directory_is_deleted_from_the_fluttercode_project_directory.dart';

void main() {
  group('''Delete directory''', () {
    testWidgets('''User deletes an existing directory within the FlutterCode project directory''', (tester) async {
      await theUserIsInTheFluttercodeProjectDirectory(tester);
      await thereIsAtLeastOneDirectoryInTheDirectory(tester);
      await theUserClicksTheDeleteDirectoryButton(tester);
      await theUserSelectsTheDirectoryToDeleteFromTheListOfAvailableDirectories(tester);
      await theUserClicksTheSubmitButton(tester);
      await theSelectedDirectoryIsDeletedFromTheFluttercodeProjectDirectory(tester);
    });
  });
}
