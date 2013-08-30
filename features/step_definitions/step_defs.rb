Given(/^I am on the home page$/) do
	@browser.goto 'http://www.cnn.com'
end

Given(/^a (.*) device using the (.*) browser$/) do |platform,browser|
	@browser.close

	$platform = platform
	$browser = browser

	@browser = Browser.setup_browser($platform,$browser)
end


Then(/^a screenshot is captured$/) do
	filename = $screenshots_path.to_s + @browser.title.to_s + '-' + Time.now.to_i.to_s + '.png'
	@browser.screenshot.save filename
end

