class CategoriesController < ApplicationController

  def show
    @articles = Article.where(status: params[:id])
  end

end
