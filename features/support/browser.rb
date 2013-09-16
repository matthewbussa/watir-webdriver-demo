module Browser

	def self.setup_browser(platform="desktop",browser="firefox")

		platform = ENV['PLATFORM']
		browser = ""
		if (platform == 'android')
			browser = setup_android
		elsif (platform == 'ios')
			browser = setup_ios
		elsif (platform == 'chrome')
			browser = setup_chrome
		end

		browser
	end

	def self.setup_ios()

		capabilities = 
		{
			'browserName' => 'iOS',
		  	'platform' => 'Mac',
		  	'version' => '6.1',
			'app' => 'safari'
		}

		server_url = "http://localhost:4723/wd/hub/"
		driver = Selenium::WebDriver.for(:remote, :desired_capabilities => capabilities, :url => server_url)#, :profile => profile)
		browser = Watir::Browser.new driver
		browser
	end

	def self.setup_chrome()
		spawn 'chromedriver'
		browser = Watir::Browser.new :chrome
		browser
	end

	def self.setup_firefox()
		Watir::Browser.new :firefox
	end

	def self.setup_android()
		capabilities =
		{
		'app' => 'chrome',
		'device' => 'Android'
		}

		server_url = "http://localhost:4723/wd/hub/"
		driver = Selenium::WebDriver.for(:remote, :desired_capabilities => capabilities, :url => server_url)#, :profile => profile)
		browser = Watir::Browser.new driver
		browser.driver.manage.timeouts.implicit_wait = 30
		browser

	end

end

World(Browser)
