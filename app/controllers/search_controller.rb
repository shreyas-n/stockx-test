class SearchController < ApplicationController

  def create
    @results = SearchService.create(params[:query].to_s)
  rescue ServiceError => e
    @err = e.message
  end

end
