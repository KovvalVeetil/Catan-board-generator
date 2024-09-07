class BoardsController < ApplicationController
    def index
    end
  
    def create
      board = Board.generate_random_board
      render json: board
    end
  end
  