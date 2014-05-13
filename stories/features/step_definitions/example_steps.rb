Given(/^I am on the example page$/) do
  @browser = Watir::Browser.new
  @browser.goto "file://#{HTML_DIR}/links.html"
end

When(/^I click the 'more information' link$/) do
  @browser.link(:id=>'basic_link').click
end

Then(/^I should see "IANA"/) do
  @browser.html.should include "This is a linked page"
  @browser.close
end

Given(/^I am on the w3schools forms page$/) do
  @browser = Watir::Browser.new
  @browser.goto "file://#{HTML_DIR}/forms.html"
end

When(/^I submit the form$/) do
  @browser.text_field(:id => "user_name").set "A username"
  @browser.button(:value=>'Submit').click
end

Then(/^I see the username displayed on the next page$/) do
  @browser.url.should include 'A+username'
  @browser.close
end