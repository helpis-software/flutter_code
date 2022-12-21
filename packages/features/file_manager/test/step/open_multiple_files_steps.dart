import 'package:bdd_widget_test/bdd_widget_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_code/main.dart';

void main() {
  Feature('Open multiple files');

  Scenario('User opens multiple files in the FlutterCode editor')
      .given('the user is in the FlutterCode project directory')
      .and('there are multiple files in the directory')
      .when('the user clicks the "Open multiple files" button')
      .and('the user selects multiple files from the list of available files')
      .then('the FlutterCode editor opens the selected files')
      .test(() async {
    // TODO: implement test
  });
}
