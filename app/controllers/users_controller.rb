class UsersController < ApplicationController
  before_action :set_user, only: [:show]
  skip_before_action :authenticate_request, only: %i[login register]
  
  #GET /users - all users
  def index
    @users = User.all
    render json: @users, status: :ok
  end

  #GET /users/{username} - shows a specific user
  def show
    render json: @user, status: :ok
  end

  #POST /users - creates a user
  def register
    @user = User.new(user_params)
    if @user.save
      response = { message: 'User has been successfully created!'}
      render json: response, status: :created
    else 
      render json: @user.errors, status: :bad
    end
  end

  private

    def user_params
      params.permit(
        :username,
        :email,
        :password
      )
    end

    def set_user
      @user = User.find(params[:id])
    end

  end