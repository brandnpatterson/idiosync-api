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

  private

  def author_params
    params.permit(:name, :bio)
  end
end
