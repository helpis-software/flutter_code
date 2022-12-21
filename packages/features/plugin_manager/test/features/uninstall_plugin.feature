Feature: Uninstall plugin

Scenario: User uninstalls a plugin in the FlutterCode editor
  Given the user is in the FlutterCode editor
  And there is at least one installed plugin
  When the user clicks the "Uninstall plugin" button
  And the user selects a plugin to uninstall from the list of installed plugins
  And the user clicks the "Submit" button
  Then the selected plugin is uninstalled from the FlutterCode editor
