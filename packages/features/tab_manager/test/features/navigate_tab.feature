Feature: Navigate tab

  Scenario: User navigates to a specific tab in the FlutterCode editor
    Given the user is in the FlutterCode editor
    And there are multiple tabs open
    When the user clicks the "Navigate tab" button
    And the user selects the tab to navigate to from the list of open tabs
    Then the FlutterCode editor displays the contents of the selected tab
