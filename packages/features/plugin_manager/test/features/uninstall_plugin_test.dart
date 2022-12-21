// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/the_user_is_in_the_fluttercode_editor.dart';
import './step/there_is_at_least_one_installed_plugin.dart';
import './step/the_user_clicks_the_uninstall_plugin_button.dart';
import './step/the_user_selects_a_plugin_to_uninstall_from_the_list_of_installed_plugins.dart';
import './step/the_user_clicks_the_submit_button.dart';
import './step/the_selected_plugin_is_uninstalled_from_the_fluttercode_editor.dart';

void main() {
  group('''Uninstall plugin''', () {
    testWidgets('''User uninstalls a plugin in the FlutterCode editor''', (tester) async {
      await theUserIsInTheFluttercodeEditor(tester);
      await thereIsAtLeastOneInstalledPlugin(tester);
      await theUserClicksTheUninstallPluginButton(tester);
      await theUserSelectsAPluginToUninstallFromTheListOfInstalledPlugins(tester);
      await theUserClicksTheSubmitButton(tester);
      await theSelectedPluginIsUninstalledFromTheFluttercodeEditor(tester);
    });
  });
}
