class RegistrationFormPage
  include PageObject

  page_url 'https://www.theiconic.com.au/customer/account/create/'


  text_field(:first_name, id: "RegistrationForm_first_name")
  text_field(:last_name, id: "RegistrationForm_last_name")
  text_field(:day, id: "RegistrationForm_day")
  text_field(:month, id: "RegistrationForm_month")
  text_field(:year, id: "RegistrationForm_year")
  text_field(:email, id: "RegistrationForm_email")
  text_field(:password, id: "RegistrationForm_password")

  select_list(:gender, id: "RegistrationForm_gender")

  radio_button(:newsletter_women, id: "RegistrationForm_newsletter_0")
  radio_button(:newsletter_man, id: "RegistrationForm_newsletter_1")
  button(:newsletter_no, id: "RegistrationForm_newsletter_2")

  button(:submit, id: "send")

end