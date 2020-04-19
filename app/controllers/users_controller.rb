class UsersController < ApplicationController
  # ユーザーがログインしていない場合、ログイン画面だけが表示
  before_action :authenticate_user!
  def index; end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update; end
end
