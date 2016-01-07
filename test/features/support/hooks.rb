Before do |scenario|
  begin
    @browser = Selenium::WebDriver.for(:firefox)
    #puts "SeleniumWebdriver initialised: #{@browser}"

  rescue
    puts "Scenario" + scenario
    abort('Error: Selenium Webdriver initialisation, check if Firefox is installed')
  end
end

After do
  @browser.close
end