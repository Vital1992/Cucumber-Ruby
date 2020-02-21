Given(/^I launch https:\/\/www\.toyotanation\.com\/forums$/) do
  @LoginPage = LoginPage.new(@browser)
  @LoginPage.visit
end

And(/^I click on Login button$/) do
  @LoginPage.clickLoginBtn
end

And(/^I enter username$/) do
  @LoginPage.enterUsername("QATest1")
end

And(/^I enter password$/) do
  @LoginPage.enterPassword("Qa123456789!")
end

When(/^I click Login button$/) do
  @LoginPage.clickLoginButton
end

Then(/^I see Home page$/) do
  @LoginPage.verifyHomePageHeader
end
