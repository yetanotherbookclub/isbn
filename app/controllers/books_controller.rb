require './lib/book_api'

class BooksController < ApplicationController
  def index
    render json: {
      '/:isbn' => 'Lookup an isbn',
      '/search/:term' => 'Do a search for a book'
    }.to_json
  end

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
