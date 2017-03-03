class ArtsController < ApplicationController
  before_action :set_art, only: [:show, :edit, :update, :destroy]

  def index
    @arts = Art.all.order(created_at: :desc)
  end

  def show
    @art = Art.find(params[:id])
  end

  def new
    @art = Art.new
  end

  def create
    colors = []
    params[:colors].values.each do |row|
      colors << row.values
    end
    @art = Art.new(colors: colors)
    if @art.save
      redirect_to art_path(@art)
    else
      redirect_to new_art_path(@art)
    end
  end

  def edit
  end

  def update
    colors = []
    params[:colors].values.each do |row|
      colors << row.values
    end
    if @art.update(colors: colors)
      redirect_to art_path(@art)
    else
      redirect_to edit_art_path(@art)
    end

  end

  def destroy
  end

  private

    def set_art
      @art = Art.find(params[:id])
    end

end
