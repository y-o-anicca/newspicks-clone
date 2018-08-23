require 'test_helper'

class ArticleTest < ActiveSupport::TestCase

  def setup
    @article = Article.new(content: "this is article")
  end

  test "content should be present" do 
    @article.content = ""
    assert_not @article.valid?
  end


end
