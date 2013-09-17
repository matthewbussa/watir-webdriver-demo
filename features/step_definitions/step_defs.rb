Given(/^I am on the home page$/) do
	@browser.goto 'https://retailuat3.alldata.net/newyorkandcompany'
end

When(/^I login$/) do
	@browser.text_field(:id=>"username_input").set 'adsdemo0'
	@browser.text_field(:id=>"password_input").set 'tropical1'
	@browser.link(:id=>"btnLogin").click
end

Then(/^a screenshot is captured$/) do

	sleep 3
	time = Time.now.to_i.to_s
	platform = ENV['PLATFORM']

	filename = $screenshots_path.to_s + @browser.title.to_s + '_' + platform + '_' + time + '.png'

	if ( platform == 'android')
		%x(adb shell /system/bin/screencap -p /sdcard/screenshot.png)
		%x(adb pull /sdcard/screenshot.png ./screenshots/screenshot.png)
		FileUtils.mv('./screenshots/screenshot.png', filename)
		%x(adb shell rm /sdcard/screenshot.png)
	else
		filename = $screenshots_path.to_s + @browser.title.to_s + "_#{platform}_" + time + '.png'
		@browser.driver.save_screenshot filename
	end

	embed '../' + filename, 'image/png'

end

