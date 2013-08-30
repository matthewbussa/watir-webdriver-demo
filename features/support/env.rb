require 'watir-webdriver'

Before do

	@browser = Browser.setup_browser

end

After do |scenario|

	@browser.close

end

AfterStep do

	@browser.wait

end
