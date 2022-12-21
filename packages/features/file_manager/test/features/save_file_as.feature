Feature: Save file as

Scenario: User saves a copy of a file with a different name in the FlutterCode editor
  Given the user is in the FlutterCode editor
  And the user has opened a file in the editor
  When the user clicks the "Save file as" button
  And the user enters a new name for the file in the input field
  And the user clicks the "Submit" button
  Then a copy of the file with the new name is saved in the FlutterCode project directory
