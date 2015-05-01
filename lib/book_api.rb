require 'hurley'

class BookApi
  attr_reader :term

  def initialize(term)
    @term = term
  end

  def search
    @book ||= results(search_data).map{|data| Book.new(data) }
  end

  def book
    @book ||= Book.new(results(isbn_data).first)
  end

  private

  def results(body)
    JSON.parse(body)['items'] || [{}]
  end

  def search_data
    client.get(url) do |req|
      req.query['key'] = key
      req.query['q'] = CGI.escape(term)
    end.body
  end

  def isbn_data
    client.get(url) do |req|
      req.query['key'] = key
      req.query['q'] = "isbn\:#{term}"
    end.body
  end

  def client
    @client ||= Hurley::Client.new("https://www.googleapis.com")
  end

  def url
    "/books/v1/volumes"
  end

  def key
    ENV['BOOKS_API_KEY']
  end
end
