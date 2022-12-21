Feature: Delete file

  Scenario: User deletes an existing file within the FlutterCode project directory
    Given the user is in the FlutterCode project directory
    And there is at least one file in the directory
    When the user clicks the "Delete file" button
    And the user selects the file to delete from the list of available files
    And the user clicks the "Submit" button
    Then the selected file is deleted from the FlutterCode project directory
