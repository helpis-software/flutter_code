Feature: Open tab

  Scenario: User opens a new tab in the FlutterCode editor
    Given the user is in the FlutterCode editor
    When the user clicks the "Open tab" button
    And the user selects a file or directory to open in the new tab
    Then a new tab is opened in the FlutterCode editor showing the contents of the selected file or directory
