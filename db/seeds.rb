User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar"
)

#サンプルユーザーの作成
99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password
               )
           end

# article と　カテゴリーのseed

# Create Posts
# 100.times do |n|
#   content     = Faker::Lorem.paragraph(30)
#
#   article = Article.create!(
#     content:      content
#   )
#
#
#   # article.create_article_categories.create(
#   #   category: categories[0]
#   # )
#
#   article.create_article_categories.create(
#     category: categories[rand(categories.size)]
#   )
# end
