User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar"
)
# article と　カテゴリーのseed

categories = (1..10).to_a.map do |n|
  names             = Faker::Name.unique.name
  Category.create!(
      name: Faker::Name.unique.name

    )
end






# Create Posts
100.times do |n|
  content     = Faker::Lorem.paragraph(30)

  article = Article.create!(
    content:      content
  )


  # article.create_article_categories.create(
  #   category: categories[0]
  # )

  article.create_article_categories.create(
    category: categories[rand(categories.size)]
  )
end
