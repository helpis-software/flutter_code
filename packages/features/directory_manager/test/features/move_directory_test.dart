// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/the_user_is_in_the_fluttercode_project_directory.dart';
import './step/there_is_at_least_one_directory_in_the_directory.dart';
import './step/the_user_clicks_the_move_directory_button.dart';
import './step/the_user_selects_the_directory_to_move_from_the_list_of_available_directories.dart';
import './step/the_user_selects_the_destination_directory_from_the_list_of_available_directories.dart';
import './step/the_user_clicks_the_submit_button.dart';
import './step/the_selected_directory_is_moved_to_the_selected_destination_directory_in_the_fluttercode_project_directory.dart';

void main() {
  group('''Move directory''', () {
    testWidgets('''User moves an existing directory within the FlutterCode project directory''', (tester) async {
      await theUserIsInTheFluttercodeProjectDirectory(tester);
      await thereIsAtLeastOneDirectoryInTheDirectory(tester);
      await theUserClicksTheMoveDirectoryButton(tester);
      await theUserSelectsTheDirectoryToMoveFromTheListOfAvailableDirectories(tester);
      await theUserSelectsTheDestinationDirectoryFromTheListOfAvailableDirectories(tester);
      await theUserClicksTheSubmitButton(tester);
      await theSelectedDirectoryIsMovedToTheSelectedDestinationDirectoryInTheFluttercodeProjectDirectory(tester);
    });
  });
}
