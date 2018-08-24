class MicropostsController < ApplicationController
  before_action :logged_in_user, only:[:create]

  def create
    @article = Article.find(params[:article_id])
    @micropost = @article.microposts.build(micropost_params)
    @micropost.user_id = current_user.id
    if @micropost.save
      flash[:success] = "コメントを投稿しました。"
      redirect_to @article
    else
      render 'articles/show'
    end
  end

  private

  def micropost_params
    params.require(:micropost).permit(:content,:article_id)
  end

end
