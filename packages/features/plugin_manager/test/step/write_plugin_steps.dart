import 'package:bdd_widget_test/bdd_widget_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_code/main.dart';

void main() {
  Feature('Write plugin');

  Scenario('User writes a plugin for the FlutterCode editor')
      .given('the user is in the FlutterCode project directory')
      .when('the user clicks the "Write plugin" button')
      .and(
          'the user selects a plugin template from the list of available templates')
      .and('the user enters a name for the plugin')
      .and('the user clicks the "Create" button')
      .then(
          'a new plugin is created in the FlutterCode project directory with the specified name and based on the selected template')
      .test(() async {
    // TODO: implement test
  });
}
