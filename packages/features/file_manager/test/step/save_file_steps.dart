import 'package:bdd_widget_test/bdd_widget_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_code/main.dart';

void main() {
  Feature('Save file');

  Scenario('User saves changes to a file in the FlutterCode editor')
      .given('the user is in the FlutterCode editor')
      .and('the user has made changes to a file in the editor')
      .when('the user clicks the "Save file" button')
      .then('the changes to the file are saved in the FlutterCode editor')
      .test(() async {
    // TODO: implement test
  });
}
