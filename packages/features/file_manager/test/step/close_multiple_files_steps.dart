import 'package:bdd_widget_test/bdd_widget_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_code/main.dart';

void main() {
  Feature('Close multiple files');

  Scenario('User closes multiple open files in the FlutterCode editor')
      .given('the user is in the FlutterCode editor')
      .and('the user has opened multiple files in the editor')
      .when('the user clicks the "Close multiple files" button')
      .then('the open files are closed in the FlutterCode editor')
      .test(() async {
    // TODO: implement test
  });
}
