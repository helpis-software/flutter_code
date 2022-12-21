Feature: Install plugin

Scenario: User installs a plugin in the FlutterCode editor
  Given the user is in the FlutterCode editor
  When the user clicks the "Install plugin" button
  And the user selects a plugin to install from the list of available plugins
  And the user clicks the "Submit" button
  Then the selected plugin is installed in the FlutterCode editor
