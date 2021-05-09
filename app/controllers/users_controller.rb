class UsersController < ApplicationController
  
  def new
    @book = Book.new
  end
  
  def show
    @book = Book.new
    @user = User.find(params[:id])
    @books = @user.books
  end 
  
  def new
    @user = User.new(user_params)
    @user.save
    redirect_to user_path(current_user.id)
  end 
  
  def edit
    @user = User.find(params[:id])
  end
  
  def index
    @users = User.all
    @books =Book.all
    @book = Book.new
    @user = current_user
  end
  
  def update
     @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end
  
  private
  
  def book_params
      params.require(:book).permit(:title, :body)
  end

  def user_params
      params.require(:user).permit(:name, :profile_image, :introduction)
  end 
  
  
  
  
end
