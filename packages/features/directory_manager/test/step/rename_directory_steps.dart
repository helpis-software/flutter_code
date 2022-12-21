import 'package:bdd_widget_test/bdd_widget_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_code/main.dart';

void main() {
  Feature('Rename directory');

  Scenario('User renames a directory in the FlutterCode editor')
      .given('the user is in the FlutterCode project directory')
      .and('there is at least one directory in the directory')
      .when('the user clicks the "Rename directory" button')
      .and('the user selects a directory from the list of available directories')
      .and('the user enters a new name for the directory')
      .and('the user clicks the "Rename" button')
      .then('the selected directory is renamed in the FlutterCode editor with the specified name')
      .test(() async {
    // TODO: implement test
  });
}
