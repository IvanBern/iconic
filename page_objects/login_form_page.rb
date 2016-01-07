class LoginFormPage
  include PageObject

  page_url 'https://www.theiconic.com.au/customer/account/login/'

  text_field(:email, :id => "LoginForm_email")
  text_field(:password, :id => "LoginForm_password")

  button(:submit, :id => "LoginForm_submit")
  link(:new, :text => "Create new account")

  div(:alert, :text => "Invalid mail")
  div(:incorrect, :text => "Incorrect username or password.")

end