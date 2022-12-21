Feature: Create file

  Scenario: User creates a new file within the FlutterCode project directory
    Given the user is in the FlutterCode project directory
    When the user clicks the "Create file" button
    And the user enters a name for the new file in the input field
    And the user clicks the "Submit" button
    Then a new file with the entered name is created in the FlutterCode project directory
