class BooksController < ApplicationController

  def new
    @book = Book.new

  end

  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to book_path(id: current_user)
  end

  def index
    @books = Book.all


  end

  def show
  @book = Book.find(params[:id])
  end

  def destroy
  end

private

  def book_params
  params.permit(:book_name, :caption)
  end










end
