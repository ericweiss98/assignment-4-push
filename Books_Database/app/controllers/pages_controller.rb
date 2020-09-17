class PagesController < ApplicationController

  def home
	@books = Book.all
  end

  #create a new Book and save it to the database
  def create
	@book = Book.new(book_params)
	if @book.save
		flash[:notice] = "Book '" + @book.Title + "' created successfully"
		redirect_to(pages_home_path)
	else
		render('add')
	end
  end

  #go to add page
  def add
  end

  #go to a page to edit given book
  def edit
	@book = Book.find(params[:format])
  end

  #update given book in database
  def update
	@book = Book.find(params[:format])
	if @book.update_attributes(book_params)
		flash[:notice] = "Book '" + @book.Title + "' updated successfully"
		redirect_to(pages_home_path)
	else
		render('edit')
	end
  end

  #show given book info
  def show
	@book = Book.find(params[:format])
  end

  #go to a page to confirm request to delete given book
  def delete
	@book = Book.find(params[:format])
  end

  #delete given book from database
  def destroy
	@book = Book.find(params[:format])
	@book.destroy
	flash[:notice] = "Book '" + @book.Title + "' destroyed successfully"
	redirect_to(pages_home_path)
  end

  private
  #make parameters
  def book_params
	params.require(:book).permit(:Title, :Author, :Genre, :Price, :PublishedDate)
  end
end
