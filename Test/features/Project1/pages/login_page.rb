class LoginPage
  attr_accessor :loginBtn,:txtUsername,:txtPassword,:btnLogin

  def wait_for
    Selenium::WebDriver::Wait.new(:timeout => 30).until {yield}
  end

  def initialize(browser)
    @browser = browser
  end

  def visit
    @browser.get "https://www.toyotanation.com/forums/"
  end

  def clickLoginBtn()
    wait_for {@browser.find_element(xpath: "//span[@qid='navbar-login-register-button']").displayed? }
    @browser.find_element(xpath: "//span[@qid='navbar-login-register-button']").click
  end

  def enterUsername(username)
    wait_for {@browser.find_element(xpath: "//input[@name='login']").displayed? }
    @browser.find_element(xpath: "//input[@name='login']").send_keys (username)
  end

  def enterPassword(password)
    wait_for {@browser.find_element(xpath: "//input[@name='password']").displayed? }
    @browser.find_element(xpath: "//input[@name='password']").send_keys (password)
  end

  def clickLoginButton
    @browser.find_element(xpath: "//button[@qid='login-button']").click
  end

  def verifyHomePageHeader()
    wait_for {@browser.find_element(xpath: "//*[@id='header']/div/div/div[3]/span/a/span/div/span").displayed? }
    @browser.find_element(xpath: "//*[@id='header']/div/div/div[3]/span/a/span/div/span").click
    wait_for {@browser.find_element(xpath: "//span[text()='My Profile']").displayed? }
    @browser.find_element(xpath: "//span[text()='My Profile']").click
    wait_for {@browser.find_element(xpath: "//span[text()='QATest1']").displayed? }
    @browser.find_element(xpath: "//span[text()='QATest1']").displayed?
  end
end