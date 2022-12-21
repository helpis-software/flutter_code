// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/the_user_is_in_the_fluttercode_project_directory.dart';
import './step/there_is_at_least_one_file_in_the_directory.dart';
import './step/the_user_clicks_the_delete_file_button.dart';
import './step/the_user_selects_the_file_to_delete_from_the_list_of_available_files.dart';
import './step/the_user_clicks_the_submit_button.dart';
import './step/the_selected_file_is_deleted_from_the_fluttercode_project_directory.dart';

void main() {
  group('''Delete file''', () {
    testWidgets('''User deletes an existing file within the FlutterCode project directory''', (tester) async {
      await theUserIsInTheFluttercodeProjectDirectory(tester);
      await thereIsAtLeastOneFileInTheDirectory(tester);
      await theUserClicksTheDeleteFileButton(tester);
      await theUserSelectsTheFileToDeleteFromTheListOfAvailableFiles(tester);
      await theUserClicksTheSubmitButton(tester);
      await theSelectedFileIsDeletedFromTheFluttercodeProjectDirectory(tester);
    });
  });
}
