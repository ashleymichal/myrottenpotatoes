Given /I have added "(.*)" with rating "(.*)"/ do |title, rating|
	steps %Q{
		Given I am on the Create New Movie page
		When I fill in "Title" with "#{title}"
		And I select "#{rating}" from "Rating"
		And I press "Save Changes"
	}
end

Then /I should see "(.*)" before "(.*)" on (.*)/ do |string1, string2, path|
	step "I am on #{path}"
	regexp = /#{string1}.*#{string2}/m 	# /m means meatch across newlines
	assert(page.body) =~ regexp
end

# Project 7.1: Create step definitions that would allow you to write the following steps in a RottenPotatoes scenario:
# 	Given the movie "Inception" exists
# 	And it has 5 reviews
# 	And its average review score is 3.5