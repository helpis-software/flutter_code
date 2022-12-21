import 'package:bdd_widget_test/bdd_widget_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_code/main.dart';

void main() {
  Feature('Create directory');

  Scenario('User creates a new directory in the FlutterCode editor')
      .given('the user is in the FlutterCode project directory')
      .when('the user clicks the "Create directory" button')
      .and('the user enters a name for the new directory')
      .and('the user clicks the "Create" button')
      .then(
          'a new directory is created in the FlutterCode editor with the specified name')
      .test(() async {
    // TODO: implement test
  });
}
