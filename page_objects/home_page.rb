class HomePage
  include PageObject

  page_url 'http://www.theiconic.com.au'

  link(:login, :xpath => ".//*[@id='top-page']/div/div[2]/div[1]/nav/section[3]/div[4]/span[2]/div[1]/a")

  div(:registration_completed, :text => "Registration completed")
  div(:user, :class => "user-initials")

end