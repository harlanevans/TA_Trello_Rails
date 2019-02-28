class BoardsController < ApplicationController
  before_action :set_board, only: [:show, :destroy, :update, :edit]

  def index
    @boards = Board.all
  end

  def show
    # before_action 
  end

  def new
    @board = Board.new
  end

  def create
    @board = Board.save(board_params)
    if @board.save
      redirect_to @board
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @board.update(board_params)
      redirect_to boards_path
    else
      render :edit
    end
  end

  def delete
    @board.destroy
    redirect_to boards_path
  end

    private

    def set_board
      @board = Board.find(params[:id])
    end

    def board_params
      params.require(:boards).permit(:title)
    end
end
