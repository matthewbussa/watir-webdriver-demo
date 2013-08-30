module Browser

	def self.setup_browser

		profile = Selenium::WebDriver::Firefox::Profile.new
		browser = Watir::Browser.new :firefox, :profile => profile

		browser
	end

end

World(Browser)
