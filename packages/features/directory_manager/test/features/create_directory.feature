Feature: Create directory

Scenario: User creates a new directory within the FlutterCode project directory
  Given the user is in the FlutterCode project directory
  When the user clicks the "Create directory" button
  And the user enters a name for the new directory in the input field
  And the user clicks the "Submit" button
  Then a new directory with the entered name is created in the FlutterCode project directory
