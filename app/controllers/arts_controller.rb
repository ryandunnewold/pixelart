class ArtsController < ApplicationController
  def index
    @arts = Art.all
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
  end

  def destroy
  end
end
