class Viewer < ApplicationRecord
  has_many :movies
  has_many :cinemas, through: :movies
end
