// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/the_user_is_in_the_fluttercode_editor.dart';
import './step/there_are_multiple_tabs_open.dart';
import './step/the_user_clicks_the_navigate_tab_button.dart';
import './step/the_user_selects_the_tab_to_navigate_to_from_the_list_of_open_tabs.dart';
import './step/the_fluttercode_editor_displays_the_contents_of_the_selected_tab.dart';

void main() {
  group('''Navigate tab''', () {
    testWidgets('''User navigates to a specific tab in the FlutterCode editor''', (tester) async {
      await theUserIsInTheFluttercodeEditor(tester);
      await thereAreMultipleTabsOpen(tester);
      await theUserClicksTheNavigateTabButton(tester);
      await theUserSelectsTheTabToNavigateToFromTheListOfOpenTabs(tester);
      await theFluttercodeEditorDisplaysTheContentsOfTheSelectedTab(tester);
    });
  });
}
