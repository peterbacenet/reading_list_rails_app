class BooksController < ApplicationController
    #what is index doing.. how are we accessing this method
    #index by itself works... lets see if show can work.. 
    def index
        @books = Book.all
        render json: @books
    end
    #not sure how to test "show" will circle back. I believe its a way to view a specific book via id..     
    def show
            selected_book = Book.find(params[:id])
            #include only works here on the render json line and not when stored to variable
            render json: selected_book, include: [:readers]
    #     render json: 
    end
end
