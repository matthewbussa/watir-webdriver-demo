Given(/^I am on the home page$/) do
	@browser.goto 'http://www.thismanslife.co.uk/projects/lab/responsiveillustration/'
end

Then(/^a screenshot is captured$/) do
	sleep 2
	platform = ENV['PLATFORM']
	embed '../' + Screenshot.capture_screenshot($screenshots_path, platform, @browser), 'image/png'

end
