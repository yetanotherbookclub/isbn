class Book
  attr_reader :title, :author, :description, :isbn, :image_url, :detail_url, :page_count, :rating, :published_at

  def initialize(data)
    @info = info = (data['volumeInfo'] || {}).symbolize_keys!
    @title        = info[:title]
    @author       = (info[:authors] || []).join(',')
    @image_url    = (info[:imageLinks] || {})['thumbnail']
    @detail_url   = info[:previewLink]
    @description  = info[:description]
    if isbns = info[:industryIdentifiers]
      match = isbns.detect{|entry| entry['type'] == 'ISBN_13'}
      @isbn = match ? match['identifier'] : nil
    end
    @page_count   = info[:pageCount]
    @rating       = info[:averageRating]
    @published_at = info[:publishedDate]
  end

  def to_json
    {
      title: title,
      author: author,
      image_url: image_url,
      description: description,
      page_count: page_count,
      isbn: isbn,
      rating: rating,
      detail_url: detail_url,
      published_at: published_at
    }
  end

end
