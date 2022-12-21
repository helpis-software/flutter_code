// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/the_user_is_in_the_fluttercode_editor.dart';
import './step/the_user_clicks_the_install_plugin_button.dart';
import './step/the_user_selects_a_plugin_to_install_from_the_list_of_available_plugins.dart';
import './step/the_user_clicks_the_submit_button.dart';
import './step/the_selected_plugin_is_installed_in_the_fluttercode_editor.dart';

void main() {
  group('''Install plugin''', () {
    testWidgets('''User installs a plugin in the FlutterCode editor''', (tester) async {
      await theUserIsInTheFluttercodeEditor(tester);
      await theUserClicksTheInstallPluginButton(tester);
      await theUserSelectsAPluginToInstallFromTheListOfAvailablePlugins(tester);
      await theUserClicksTheSubmitButton(tester);
      await theSelectedPluginIsInstalledInTheFluttercodeEditor(tester);
    });
  });
}
