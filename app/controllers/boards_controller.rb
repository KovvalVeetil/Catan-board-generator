class BoardsController < ApplicationController
    protect_from_forgery with: :exception
    def index
    end
  
    def create
      board = Board.generate_random_board
      render json: board
    end
  end
  