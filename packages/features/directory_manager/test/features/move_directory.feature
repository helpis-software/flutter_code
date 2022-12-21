Feature: Move directory

Scenario: User moves an existing directory within the FlutterCode project directory
  Given the user is in the FlutterCode project directory
  And there is at least one directory in the directory
  When the user clicks the "Move directory" button
  And the user selects the directory to move from the list of available directories
  And the user selects the destination directory from the list of available directories
  And the user clicks the "Submit" button
  Then the selected directory is moved to the selected destination directory in the FlutterCode project directory
