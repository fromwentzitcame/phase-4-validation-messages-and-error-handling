class Movie < ApplicationRecord
    CATEGORIES = ['Comedy', 'Drama', 'Animation', 'Mystery', 'Horror', 'Fantasy', 'Action', 'Documentary', 'Science Fiction']

    validates :title, length: { minimum: 1 }
    validates :year, numericality: {
      greater_than_or_equal_to: 1888,
      less_than_or_equal_to: Date.today.year
    }
    validates :poster_url, length: { minimum: 1 }
    validates :category, inclusion: {
      in: CATEGORIES,
      message: "must be one of: #{CATEGORIES.join(', ')}"
    }

end
