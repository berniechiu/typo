Then /^the following articles exist$/ do |table|
  Article.create(table.hashes)
end

Then /^the article "(.*?)" should have body "(.*?)"$/ do |title, body|
  Article.find_by_title(title).body.should == body
end
