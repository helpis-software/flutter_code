Feature: Save file

Scenario: User saves changes to a file in the FlutterCode editor
  Given the user is in the FlutterCode editor
  And the user has made changes to a file in the editor
  When the user clicks the "Save file" button
  Then the changes to the file are saved in the FlutterCode project directory
