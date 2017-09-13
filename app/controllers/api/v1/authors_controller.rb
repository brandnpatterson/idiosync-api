class Api::V1::AuthorsController < ApplicationController
  def index
    @authors = Author.all
    render json: @authors, status: :ok
  end

  def create
    @author = Author.new(author_params)
    @author.save
    render json: @author, status: :created
  end

  def destroy
    @author = Author.where(id: params[:id]).first
    if @author.destroy
      head(:ok)
    else
      head(:unprocessable_entity)
    end
  end

  def update
    @author = Author.where(id: params[:id]).first
    if @author.update_attributes(author_params)
      render json: @author, status: :ok
    else
      head(:unprocessable_entity)
    end
  end

  private

  def author_params
    params.permit(:name, :bio)
  end
end
