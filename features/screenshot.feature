Feature:
	As a user
	I want to navigate to a url
	So that I can capture a screenshot


 Scenario: "Capture screenshot for one device and platform"
 	Given I am on the home page
 	When I login
 	Then a screenshot is captured