Feature: Delete directory

Scenario: User deletes an existing directory within the FlutterCode project directory
  Given the user is in the FlutterCode project directory
  And there is at least one directory in the directory
  When the user clicks the "Delete directory" button
  And the user selects the directory to delete from the list of available directories
  And the user clicks the "Submit" button
  Then the selected directory is deleted from the FlutterCode project directory
