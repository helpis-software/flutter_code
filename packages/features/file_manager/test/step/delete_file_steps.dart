import 'package:bdd_widget_test/bdd_widget_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_code/main.dart';

void main() {
  Feature('Delete file');

  Scenario('User deletes a file in the FlutterCode editor')
      .given('the user is in the FlutterCode project directory')
      .and('there is at least one file in the directory')
      .when('the user clicks the "Delete file" button')
      .and('the user selects a file from the list of available files')
      .and('the user clicks the "Delete" button')
      .then('the selected file is deleted from the FlutterCode editor')
      .test(() async {
    // TODO: implement test
  });
}
