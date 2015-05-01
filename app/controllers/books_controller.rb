require './lib/book_api'

class BooksController < ApplicationController
  def show
    render json: client.book.to_json
  end

  def search
    render json: client.search.to_json
  end

  private

  def client
    @client ||= BookApi.new(params[:id])
  end
end
