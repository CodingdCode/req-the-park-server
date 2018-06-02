class UsersController < ApplicationController
  before_action :authenticate_user, only: [:show, :destroy]

  def index
      render json:  User.all.to_json
  end

  def show
    render json: User.find(params[:id]).to_json
  end

  def create
    render json: User.create(req_params).to_json
  end

  def update
   render json: @user.update(user_params)
  end

  def destroy
    @user.destroy
  end

  private

  def req_params
    params.require(:user).permit(:username, :email, :password_digest)
  end
end
