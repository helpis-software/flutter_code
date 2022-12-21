import 'package:bdd_widget_test/bdd_widget_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_code/main.dart';

void main() {
  Feature('Create file');

  Scenario('User creates a new file in the FlutterCode editor')
      .given('the user is in the FlutterCode project directory')
      .when('the user clicks the "Create file" button')
      .and('the user enters a name for the new file')
      .and('the user clicks the "Create" button')
      .then('a new file is created in the FlutterCode editor with the specified name')
      .test(() async {
    // TODO: implement test
  });
}
