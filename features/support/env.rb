require 'watir-webdriver'
require 'selenium-webdriver'
require 'fileutils'

$screenshots_path = 'screenshots/'

#clean up from last test run
FileUtils.rm_rf(Dir.glob('screenshots/**/*'))
FileUtils.rm_rf(Dir.glob('reports/**/*.html'))


Before do
	@browser = Browser.setup_browser
end


AfterStep do
	if (ENV['PLATFORM'] == 'iPhone' || ENV['PLATFORM'] == 'iPad')
		sleep 2
	else
		@browser.wait
	end

end
