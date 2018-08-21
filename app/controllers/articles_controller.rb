class ArticlesController < ApplicationController
  require 'open-uri'
  require 'nokogiri'

  def pick
  end

  def create
    document = open(params[:url])
    content = document.read
    page = Nokogiri::HTML(content)
    @title = page.title
    @image = page.css('img').attr('src')
    @article = Article.new(
    title: @title,
    image: @image, 
    url: params[:url]
)
    if @article.save
      redirect_to root_url
    else
      flash[:danger] = "pick失敗しました"
      render 'top_pages/home'
    end
  end

end
