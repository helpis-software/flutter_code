Feature: Close tab

  Scenario: User closes an existing tab in the FlutterCode editor
    Given the user is in the FlutterCode editor
    And there is at least one tab open
    When the user clicks the "Close tab" button
    And the user selects the tab to close from the list of open tabs
    Then the selected tab is closed in the FlutterCode editor
