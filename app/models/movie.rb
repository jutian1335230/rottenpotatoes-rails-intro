class Movie < ActiveRecord::Base
  def self.all_ratings
    ['G', 'PG', 'PG-13', 'R']
  end

  # Return movies with selected ratings, or all if none given
  def self.with_ratings(ratings_list)
    if ratings_list.nil? || ratings_list.empty?
      Movie.all
    else
      Movie.where(rating: ratings_list)
    end
  end
end
