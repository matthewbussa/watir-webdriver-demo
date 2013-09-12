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

	sleep 3
	%x(adb shell /system/bin/screencap -p /sdcard/screenshot.png)
	time = Time.now.to_i.to_s
	puts 'current directory is' + `pwd`
	%x(adb pull /sdcard/screenshot.png ./screenshots/screenshot.png)
	FileUtils.mv('./screenshots/screenshot.png', './screenshots/screenshot' + time + '.png')
	%x(adb shell rm /sdcard/screenshot.png)

#	filename = $screenshots_path.to_s + @browser.title.to_s + '-' + time + '.png'
#	@browser.driver.save_screenshot filename
end

