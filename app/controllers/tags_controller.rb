class TagsController < ApplicationController
  def index
    render json: Tag.popularity_list.as_json
  end
end
