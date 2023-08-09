class ListsController < ApplicationController
  def index
    @books = Book.all
    @book = Book.new
  end
  
  def create
    book = Book.new(book_params)
    book.save
    redirect_to book_show_path(book.id)
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
  end
  
  def destroy
  end
  
  private
  def book_params
    params.require(:book).permit(:title,:body)
  end
end