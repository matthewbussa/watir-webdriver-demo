Given(/^I am on the home page$/) do
	@browser.goto 'http://www.cnn.com'
end

Then(/^a screenshot is captured$/) do
	filename = $screenshots_path.to_s + @browser.title.to_s + '-' + Time.now.to_i.to_s + '.png'
	@browser.screenshot.save filename
end
