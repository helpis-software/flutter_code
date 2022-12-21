Feature: Edit file

  Scenario: User edits the contents of a file within the FlutterCode project directory
    Given the user is in the FlutterCode project directory
    And there is at least one file in the directory
    When the user clicks the "Edit file" button
    And the user selects the file to edit from the list of available files
    And the user makes changes to the contents of the file in the editor
    And the user clicks the "Save" button
    Then the changes to the file are saved in the FlutterCode project directory
