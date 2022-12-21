import 'package:bdd_widget_test/bdd_widget_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_code/main.dart';

void main() {
  Feature('Move file');

  Scenario('User moves a file in the FlutterCode editor')
      .given('the user is in the FlutterCode project directory')
      .and('there is at least one file in the directory')
      .when('the user clicks the "Move file" button')
      .and('the user selects a file from the list of available files')
      .and('the user selects a destination directory')
      .and('the user clicks the "Move" button')
      .then('the selected file is moved to the specified destination directory in the FlutterCode editor')
      .test(() async {
    // TODO: implement test
  });
}
