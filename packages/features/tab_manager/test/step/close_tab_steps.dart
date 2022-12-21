import 'package:bdd_widget_test/bdd_widget_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_code/main.dart';

void main() {
  Feature('Close tab');

  Scenario('User closes a tab in the FlutterCode editor')
      .given('the user has multiple tabs open in the FlutterCode editor')
      .when('the user clicks the "Close tab" button')
      .and('the user selects a tab from the list of open tabs')
      .and('the user clicks the "Close" button')
      .then('the selected tab is closed in the FlutterCode editor')
      .test(() async {
    // TODO: implement test
  });
}
