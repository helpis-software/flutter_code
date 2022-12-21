import 'package:bdd_widget_test/bdd_widget_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_code/main.dart';

void main() {
  Feature('Move directory');

  Scenario('User moves a directory in the FlutterCode editor')
      .given('the user is in the FlutterCode project directory')
      .and('there is at least one directory in the directory')
      .when('the user clicks the "Move directory" button')
      .and('the user selects a directory from the list of available directories')
      .and('the user selects a destination directory')
      .and('the user clicks the "Move" button')
      .then('the selected directory is moved to the specified destination directory in the FlutterCode editor')
      .test(() async {
    // TODO: implement test
  });
}
