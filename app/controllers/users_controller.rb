class UsersController < ApplicationController

  def index
    render json:  User.all.to_json
  end

  def show
    render json: User.find(params[:id]).to_json
  end

  def create
    render json: User.create(req_params).to_json

  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end
  
  private

  def req_params
    params.require(:user).permit(:username, :hash_pw, :img_url)
  end
end
