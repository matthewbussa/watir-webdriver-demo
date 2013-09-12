require 'watir-webdriver'
require 'selenium-webdriver'
require 'fileutils'

$screenshots_path = 'screenshots/'

#clean up from last test run
FileUtils.rm_rf(Dir.glob('#{$screenshots_path}/*.png'))


Before do
	@browser = Browser.setup_browser
end

at_exit do
	#@browser.close
end


AfterStep do
	@browser.wait
end
