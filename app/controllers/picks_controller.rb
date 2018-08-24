class PicksController < ApplicationController
  before_action :logged_in_user, only:[:create, :destroy]

  def create
    @pick = Pick.new(user_id: current_user.id, article_id: params[:id])
    @pick.save
    redirect_to "/articles/#{params[:id]}"
  end

  def destroy
    @pick = Pick.find_by(user_id: current_user.id, article_id: params[:id])
    @pick.destroy
    redirect_to "/articles/#{params[:id]}"
  end
end
