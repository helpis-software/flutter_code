// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/the_user_is_in_the_fluttercode_editor.dart';
import './step/the_user_clicks_the_select_theme_button.dart';
import './step/the_user_selects_a_theme_from_the_list_of_available_themes.dart';
import './step/the_user_clicks_the_submit_button.dart';
import './step/the_fluttercode_editor_is_updated_to_use_the_selected_theme.dart';

void main() {
  group('''Select theme''', () {
    testWidgets('''User selects a theme for the FlutterCode editor''', (tester) async {
      await theUserIsInTheFluttercodeEditor(tester);
      await theUserClicksTheSelectThemeButton(tester);
      await theUserSelectsAThemeFromTheListOfAvailableThemes(tester);
      await theUserClicksTheSubmitButton(tester);
      await theFluttercodeEditorIsUpdatedToUseTheSelectedTheme(tester);
    });
  });
}
