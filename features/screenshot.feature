Feature:
	As a user
	I want to navigate to a url
	So that I can capture a screenshot


 Scenario: "Capture screenshot for one device and platform"
 	Given I am on the home page
 	Then a screenshot is captured

 Scenario Outline: "Multiple Device Testing"
	Given a <platform> device using the <browser> browser
 	And I am on the home page
    Then a screenshot is captured

    Examples:
        |platform|browser|
        |desktop |chrome |

