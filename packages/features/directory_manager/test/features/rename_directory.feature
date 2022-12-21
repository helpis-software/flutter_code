Feature: Rename directory

Scenario: User renames an existing directory within the FlutterCode project directory
  Given the user is in the FlutterCode project directory
  And there is at least one directory in the directory
  When the user clicks the "Rename directory" button
  And the user selects the directory to rename from the list of available directories
  And the user enters a new name for the directory in the input field
  And the user clicks the "Submit" button
  Then the selected directory is renamed to the entered name in the FlutterCode project directory
