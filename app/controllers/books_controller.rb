class BooksController < ApplicationController
  def top
  end

  def index
    @books = Book.all
  end

  def create
    book = Book.new
    book.save
    redirect_to '/top'
  end
  private

  def book_params
    params.require(:book).permit(:Title, :Body)
  end
end
