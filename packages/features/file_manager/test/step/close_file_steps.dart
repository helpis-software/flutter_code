import 'package:bdd_widget_test/bdd_widget_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_code/main.dart';

void main() {
  Feature('Close file');

  Scenario('User closes an open file in the FlutterCode editor')
      .given('the user is in the FlutterCode editor')
      .and('the user has opened a file in the editor')
      .when('the user clicks the "Close file" button')
      .then('the open file is closed in the FlutterCode editor')
      .test(() async {
    // TODO: implement test
  });
}
