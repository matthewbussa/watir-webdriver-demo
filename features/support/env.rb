require 'watir-webdriver'

$screenshots_path = 'screenshots/'

#clean up from last test run
FileUtils.rm_rf(Dir.glob('#{$screenshots_path}/*.png'))


Before do

	@browser = Browser.setup_browser

end

After do |scenario|

	@browser.close

end

AfterStep do

	@browser.wait

end
