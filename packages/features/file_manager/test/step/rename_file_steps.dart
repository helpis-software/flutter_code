import 'package:bdd_widget_test/bdd_widget_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_code/main.dart';

void main() {
  Feature('Rename file');

  Scenario('User renames a file in the FlutterCode editor')
      .given('the user is in the FlutterCode project directory')
      .and('there is at least one file in the directory')
      .when('the user clicks the "Rename file" button')
      .and('the user selects a file from the list of available files')
      .and('the user enters a new name for the file')
      .and('the user clicks the "Rename" button')
      .then('the selected file is renamed in the FlutterCode editor with the specified name')
      .test(() async {
    // TODO: implement test
  });
}
