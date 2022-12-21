Feature: Edit directory

Scenario: User edits the contents of an existing directory within the FlutterCode project directory
  Given the user is in the FlutterCode project directory
  And there is at least one directory in the directory
  When the user clicks the "Edit directory" button
  And the user selects the directory to edit from the list of available directories
  Then the FlutterCode editor opens the selected directory and allows the user to edit its contents
