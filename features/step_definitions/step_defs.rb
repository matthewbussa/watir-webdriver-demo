Given(/^I am on the home page$/) do
	@browser.goto 'http://www.cnn.com'
end

Then(/^a screenshot is captured$/) do

	sleep 3
	time = Time.now.to_i.to_s
	platform = ENV['PLATFORM']
	filename = $screenshots_path.to_s + @browser.title.to_s + '_' + platform + '_' + time + '.png'

	if ( platform == 'android')
		%x(adb shell /system/bin/screencap -p /sdcard/screenshot.png)
		puts 'current directory is' + `pwd`
		%x(adb pull /sdcard/screenshot.png ./screenshots/screenshot.png)
		FileUtils.mv('./screenshots/screenshot.png', filename)
		%x(adb shell rm /sdcard/screenshot.png)
	else
		filename = $screenshots_path.to_s + @browser.title.to_s + '_#{platform}_' + time + '.png'
		@browser.driver.save_screenshot filename
	end
end

