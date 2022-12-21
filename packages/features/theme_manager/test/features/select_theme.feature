Feature: Select theme

Scenario: User selects a theme for the FlutterCode editor
  Given the user is in the FlutterCode editor
  When the user clicks the "Select theme" button
  And the user selects a theme from the list of available themes
  And the user clicks the "Submit" button
  Then the FlutterCode editor is updated to use the selected theme
