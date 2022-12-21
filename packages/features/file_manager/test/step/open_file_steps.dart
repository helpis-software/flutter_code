import 'package:bdd_widget_test/bdd_widget_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_code/main.dart';

void main() {
  Feature('Open file');

  Scenario('User opens a file in the FlutterCode editor')
      .given('the user is in the FlutterCode project directory')
      .and('there is at least one file in the directory')
      .when('the user clicks the "Open file" button')
      .and('the user selects a file from the list of available files')
      .then('the FlutterCode editor opens the selected file')
      .test(() async {
    // TODO: implement test
  });
}
