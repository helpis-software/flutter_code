// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/the_user_is_in_the_fluttercode_editor.dart';
import './step/there_is_at_least_one_tab_open.dart';
import './step/the_user_clicks_the_close_tab_button.dart';
import './step/the_user_selects_the_tab_to_close_from_the_list_of_open_tabs.dart';
import './step/the_selected_tab_is_closed_in_the_fluttercode_editor.dart';

void main() {
  group('''Close tab''', () {
    testWidgets('''User closes an existing tab in the FlutterCode editor''', (tester) async {
      await theUserIsInTheFluttercodeEditor(tester);
      await thereIsAtLeastOneTabOpen(tester);
      await theUserClicksTheCloseTabButton(tester);
      await theUserSelectsTheTabToCloseFromTheListOfOpenTabs(tester);
      await theSelectedTabIsClosedInTheFluttercodeEditor(tester);
    });
  });
}
