require 'test_helper'


class Rumojinize::Test < ActiveSupport::TestCase
  setup do
    @body_with_emoji = "I love 🐶s."
  end

  test "truth" do
    assert_kind_of Module, Rumojinize
  end

  test "emoji saved as emoji." do
    assert_equal Article.count, 0

    article = Article.new body: @body_with_emoji
    article.save

    assert_equal Article.count, 1
    assert_equal article.body, @body_with_emoji
  end

  test "emoji will be saved as plain text" do
    assert_equal RumojinizedArticle.count, 0

    article = RumojinizedArticle.new body: @body_with_emoji
    article.save

    result = ActiveRecord::Base.connection.exec_query "SELECT * FROM rumojinized_articles LIMIT 1;"
    plain_article = result.to_hash[0]
    assert_equal plain_article['body'], "I love :dog:s."
  end

  test "emoji will be decoded as emoji" do
    assert_equal RumojinizedArticle.count, 0

    article = RumojinizedArticle.new body: @body_with_emoji
    article.save

    assert_equal RumojinizedArticle.count, 1
    assert_equal article.body, @body_with_emoji
  end
end
