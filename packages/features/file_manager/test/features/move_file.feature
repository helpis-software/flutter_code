Feature: Move file

  Scenario: User moves a file from one location to another within the FlutterCode project directory
    Given the user is in the FlutterCode project directory
    And there is at least one file in the directory
    When the user clicks the "Move file" button
    And the user selects the file to move from the list of available files
    And the user enters a new location for the file in the input field
    And the user clicks the "Submit" button
    Then the selected file is moved to the new location in the FlutterCode project directory
