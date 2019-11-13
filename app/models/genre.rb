class Genre < ApplicationRecord
  has_many :songs

  def self.link(genre_id)
    var = Genre.find_by_id(genre_id)
    ActionController::Base.helpers.link_to var.name, Rails.application.routes.url_helpers.genre_path(var)
  end
end
