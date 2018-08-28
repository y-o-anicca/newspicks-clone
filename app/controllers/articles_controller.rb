class ArticlesController < ApplicationController
  before_action :logged_in_user, only:[:pick, :create]
  require 'open-uri'
  require 'nokogiri'

  def new
  end

  def create
    status_sym= params[:status].to_sym
    status = Article.statuses[status_sym]
    document = open(params[:url])
    content = document.read
    page = Nokogiri::HTML(content)
    @title = page.title
    @image = page.css('//meta[property="og:image"]/@content').to_s
    @article = current_user.articles.build(
      title: @title,
      image: @image,
      url: params[:url],
      status: status
    )
    @article.image ||= "https://via.placeholder.com/600x400"
    if @article.save
      redirect_to root_url
    else
      flash[:danger] = "pick失敗しました"
      render 'top_pages/home'
    end
  end

  def show
    @article = Article.find_by(id: params[:id])
    @microposts = @article.microposts
    @micropost = @article.microposts.build
  end

  private

end
