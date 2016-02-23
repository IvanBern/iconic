class HomePage
  include PageObject

  page_url 'http://www.theiconic.com.au'

  link(:login, xpath: "//a[contains(@data-ga-label,'Login')]")

  div(:registration_completed, text: "Registration completed")
  div(:user, class: "user-initials")

end