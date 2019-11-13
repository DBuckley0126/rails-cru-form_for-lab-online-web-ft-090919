class Artist < ApplicationRecord
  has_many :songs

  def self.link(artist_id)
    var = Artist.find_by_id(artist_id)
    ActionController::Base.helpers.link_to var.name, Rails.application.routes.url_helpers.artist_path(var)
  end
end
