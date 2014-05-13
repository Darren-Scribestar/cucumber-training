Given(/^I am on the example page$/) do
  @browser = Watir::Browser.new
  @browser.goto "http://www.example.com"
end

When(/^I click the 'more information' link$/) do
  @browser.link(:text=>'More information...').click
end

Then(/^I should see "IANA"/) do
  @browser.html.should include "IANA"
  @browser.close
end

Given(/^I am on the w3schools forms page$/) do
  @browser = Watir::Browser.new
  @browser.goto "http://www.w3schools.com/html/html_forms.asp"
end

When(/^I submit the form$/) do
  @browser.text_field(:name=> 'user').set "A username"
  @browser.button(:value=>'Submit').click
end

Then(/^I see the username displayed on the next page$/) do
  @browser.window(:title => /Forms action page/).use do
    @browser.text.should include "user=A+username"
  end
  @browser.close
end