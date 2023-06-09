class BooksController < ApplicationController
  def new
     @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.save
     redirect_to '/'
  end

  def index
     @book = Book.all
  end

  def show
    @book = Book.find_by(id:params[:id])
  end

  def edit
  end

private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
