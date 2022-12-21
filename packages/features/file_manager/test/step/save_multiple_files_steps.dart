import 'package:bdd_widget_test/bdd_widget_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_code/main.dart';

void main() {
  Feature('Save multiple files');

  Scenario('User saves changes to multiple files in the FlutterCode editor')
      .given('the user is in the FlutterCode editor')
      .and('the user has made changes to multiple files in the editor')
      .when('the user clicks the "Save multiple files" button')
      .then('the changes to the multiple files are saved in the FlutterCode editor')
      .test(() async {
    // TODO: implement test
  });
}
