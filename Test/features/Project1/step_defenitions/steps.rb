Given("I launch browser") do |table|
  link = table.raw[1][0]
  @LoginPage = LoginPage.new(@browser)
  @LoginPage.visit("#{link}")
end

And("I click on Login button") do
  @LoginPage.clickLoginBtn()
end

And("I enter {string} and {string}") do |username,password|
  @LoginPage.enterUsername("#{username}")
  @LoginPage.enterPassword("#{password}")
end

When("I click Login button") do
  @LoginPage.clickLoginButton()
end

Then("I see Home page") do
  @LoginPage.verifyHomePageHeader()
end
