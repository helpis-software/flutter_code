import 'package:bdd_widget_test/bdd_widget_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_code/main.dart';

void main() {
  Feature('Navigate tabs');

  Scenario('User navigates between tabs in the FlutterCode editor')
      .given('the user has multiple tabs open in the FlutterCode editor')
      .when('the user clicks a tab')
      .then('the selected tab becomes the active tab in the FlutterCode editor')
      .test(() async {
    // TODO: implement test
  });
}
