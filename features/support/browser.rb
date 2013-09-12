module Browser




	def self.setup_browser(platform="desktop",browser="firefox")


		#firefox
#		browser = Watir::Browser.new :firefox

		#chrome
		#spawn 'chromedriver'
		#browser = Watir::Browser.new :chrome


		#ios
		# capabilities = 
		# {
		# 	'browserName' => 'iOS',
		#   	'platform' => 'Mac',
		#   	'version' => '6.1',
		# 	'app' => 'safari'
		# }

		# 	server_url = "http://localhost:4723/wd/hub/"
		# 	driver = Selenium::WebDriver.for(:remote, :desired_capabilities => capabilities, :url => server_url)#, :profile => profile)
		# 	browser = Watir::Browser.new driver





      # my_proxy = "10.50.62.65:80"
      # proxy = Selenium::WebDriver::Proxy.new(
      #     :http     => my_proxy
      # )

		capabilities =
		{
		'app' => 'chrome',
		'device' => 'Android'
		}

		server_url = "http://localhost:4723/wd/hub/"
		driver = Selenium::WebDriver.for(:remote, :desired_capabilities => capabilities, :url => server_url)#, :profile => profile)
		browser = Watir::Browser.new driver
		browser.driver.manage.timeouts.implicit_wait = 30

		# 	#browser.driver.manage.timeouts.page_load = 30



      browser

	end

end

World(Browser)
