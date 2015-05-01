class Book
  attr_reader :title, :author, :description, :image_url, :detail_url, :page_count, :rating, :published_at

  def initialize(data)
    @data = data

    info = (data['volumeInfo'] || {}).symbolize_keys!

    puts info.inspect
    @title        = info[:title]
    @author       = (info[:authors] || []).join(',')
    @image_url    = (info[:imageLinks] || {})['thumbnail']
    @detail_url   = info[:previewLink]
    @description  = info[:description]
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
      rating: rating,
      detail_url: detail_url,
      published_at: published_at
    }
  end

end
