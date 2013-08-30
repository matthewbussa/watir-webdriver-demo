module Browser

	def self.setup_browser(platform="desktop",browser="firefox")

		puts "Platform:  #{platform}"
		puts "Browser: #{browser}"

		if (platform == "desktop" and browser == "chrome")
			puts "Reached Chrome"
			browser = Watir::Browser.new :chrome

		else
			profile = Selenium::WebDriver::Firefox::Profile.new
			browser = Watir::Browser.new :firefox, :profile => profile
		end

		browser
	end

end

World(Browser)
