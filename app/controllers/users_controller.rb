class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @books = Book.all
  end

def create

    @book.user_id = current_user.id
    @book.save
    redirect_to user_path
    @book = Book.new(book_params)
end

  def index
    @user = User.all
    @books = Book.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end

private

def user_params
params.require(:user).permit(:name, :profile_image)
end

end
