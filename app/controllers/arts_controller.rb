class ArtsController < ApplicationController
  def index
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
    @art = Art.create(colors: colors)
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
