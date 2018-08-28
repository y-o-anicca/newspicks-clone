class PicksController < ApplicationController
  before_action :logged_in_user, only:[:create, :destroy, :show]

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

  def show
    @picks = Pick.where(user_id: current_user.id)
  end
end
