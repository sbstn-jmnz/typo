
And /^the following articles exist:$/ do |article|
  Article.create!(article.hashes)
end

Then /^the article "(.*?)" should have "(.*?)" having content "(.*?)"$/ do |article_name, attribute, value|
  article = Article.find_by_title(article_name)
  assert_equal article.send(attribute), value
end
