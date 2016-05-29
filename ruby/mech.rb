require 'rubygems'
require 'mechanize'
require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox
driver.navigate.to "https://www.linkedin.com/uas/login?goback=&trk=hb_signin"
login = driver.find_element(:name, 'session_key')
password = driver.find_element(:name, 'session_password')
submit_form=driver.find_element(:name,'signin')
login.send_keys="selard07@gmail.com"
password.send_keys="dnokro98"
submit_form.submit
puts driver.title

# Mechanize
# agent=Mechanize.new{|agent| agent.user_agent_alias="PC Firefox"}
# agent=Mechanize.new
# page=agent.get('https://www.linkedin.com/uas/login?session_redirect=https%3A%2F%2Fwww%2Elinkedin%2Ecom%2Fvsearch%2Fc%3FopenFacets%3DN%252CCCR%252CJO%26keywords%3Doil%26pageKey%3Dvoltron_company_search_internal_jsp%26type%3Dcompanies%26f_CCR%3Dca%253A0%26search%3DSearch%26trkInfo%3DtarId%253A1464423297374%26rsid%3D4249884031464423297946%26orig%3DFCTD&fromSignIn=true&trk=uno-reg-join-sign-in%22')
# login_form=page.form(action: 'https://www.linkedin.com/uas/login-submit')
# # pp page
# login_form.session_key='selard07@gmail.com'
# login_form.session_password='dnokro98'
# results=agent.submit(login_form, login_form.button('signin'))
# pp results