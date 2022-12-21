Feature: Search file

Scenario: User searches for a specific file within the FlutterCode project directory
  Given the user is in the FlutterCode project directory
  And there are multiple files in the directory
  When the user clicks the "Search file" button
  And the user enters the name or partial name of the file to search for in the input field
  And the user clicks the "Submit" button
  Then the FlutterCode editor displays a list of files that match the search criteria
