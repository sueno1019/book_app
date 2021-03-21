class Api::V1::BooksController < ApplicationController
    before_action :set_book, only: [:show]
  
    rescue_from ActiveRecord::RecordNotFound do |exception|
      render json: { error: '404 not found' }, status: 404
    end
  
    def index
      books = Book.all
      render json: books
    end
  
    def create
      book = Book.new(book_params)
      if book.save
        render json: book, status: :created
      else
        render json: { errors: book.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    private
  
    def set_book
      @book = Book.find(params[:id])
    end
  
    def book_params
      params.fetch(:book, {}).permit(:title, :author, :image)
    end
  
    def render_status_404(exception)
      render json: { errors: [exception] }, status: 404
    end
  
    def render_status_500(exception)
      render json: { errors: [exception] }, status: 500
    end
  
  
  end
  