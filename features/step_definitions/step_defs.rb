Given(/^I am on the home page$/) do
	@browser.goto 'http://www.thismanslife.co.uk/projects/lab/responsiveillustration/'
end

Then(/^a screenshot is captured$/) do

	time = Time.now.to_i.to_s
	platform = ENV['PLATFORM']

	filename = $screenshots_path.to_s + @browser.title.to_s + '_' + platform + '_' + time + '.png'

	if ( platform == 'android')
		%x(adb shell /system/bin/screencap -p /sdcard/screenshot.png)
		%x(adb pull /sdcard/screenshot.png ./screenshots/screenshot.png)
		FileUtils.mv('./screenshots/screenshot.png', filename)
		%x(adb shell rm /sdcard/screenshot.png)
	else
		filename = $screenshots_path.to_s + "#{platform}_" + @browser.title.to_s + "_" + time + '.png'
		@browser.driver.save_screenshot filename
	end

	embed '../' + filename, 'image/png'

end

