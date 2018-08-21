class ArticlesController < ApplicationController
  before_action :logged_in_user, only:[:pick, :create]

  require 'open-uri'
  require 'nokogiri'

  def pick
  end

  def create
    status_sym= params[:status].to_sym
    status = Category.statuses[status_sym]
    document = open(params[:url])
    content = document.read
    page = Nokogiri::HTML(content)
    @title = page.title
    @image = page.css('img').attr('src')
    if @article = current_user.articles.create(
    title: @title,
    image: @image,
    url: params[:url]
)
      @article.categories.create(status: status)
      redirect_to root_url
    else
      flash[:danger] = "pick失敗しました"
      render 'top_pages/home'
    end
  end

end
