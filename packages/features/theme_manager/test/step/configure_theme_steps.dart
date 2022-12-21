import 'package:bdd_widget_test/bdd_widget_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_code/main.dart';

void main() {
  Feature('Configure theme');

  Scenario('User configures the theme of the FlutterCode editor')
      .given('the user is in the FlutterCode project directory')
      .when('the user clicks the "Configure theme" button')
      .and('the user selects a theme from the list of available themes')
      .and('the user clicks the "Apply" button')
      .then(
          'the theme of the FlutterCode editor is changed to the selected theme')
      .test(() async {
    // TODO: implement test
  });
}
