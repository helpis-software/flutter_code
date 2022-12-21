// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/the_user_is_in_the_fluttercode_editor.dart';
import './step/the_user_clicks_the_open_tab_button.dart';
import './step/the_user_selects_a_file_or_directory_to_open_in_the_new_tab.dart';
import './step/a_new_tab_is_opened_in_the_fluttercode_editor_showing_the_contents_of_the_selected_file_or_directory.dart';

void main() {
  group('''Open tab''', () {
    testWidgets('''User opens a new tab in the FlutterCode editor''', (tester) async {
      await theUserIsInTheFluttercodeEditor(tester);
      await theUserClicksTheOpenTabButton(tester);
      await theUserSelectsAFileOrDirectoryToOpenInTheNewTab(tester);
      await aNewTabIsOpenedInTheFluttercodeEditorShowingTheContentsOfTheSelectedFileOrDirectory(tester);
    });
  });
}
