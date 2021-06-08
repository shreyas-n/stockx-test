class SearchService

  def self.allowed_brands
    %w[adidas jordan nike puma]
  end

  def self.create(search_query)
    return {
      hits: []
    } unless search_query.to_s.strip.present?

    STOCKX_ALGOLIA_INDEX.search(search_query.to_s)
  end

  def self.raise_error(msg, status_code = 400)
    raise ServiceError.new(msg, status_code)
  end

end