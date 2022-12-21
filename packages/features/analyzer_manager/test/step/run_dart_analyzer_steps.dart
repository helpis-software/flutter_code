import 'package:bdd_widget_test/bdd_widget_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_code/main.dart';

void main() {
  Feature('Run dart analyzer');

  Scenario('User runs dart analyzer in the FlutterCode editor')
      .given('the user is in the FlutterCode project directory')
      .and('there is an analysis_options.dart file in the directory')
      .when('the user clicks the "Run dart analyzer" button')
      .then('the dart analyzer is run with the specified analysis_options.dart file and any warnings or errors are highlighted in the FlutterCode editor')
      .test(() async {
    // TODO: implement test
  });
}
