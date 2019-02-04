class Cinema < ApplicationRecord
  has_many :movies
  has_many :viewers, through: :movies
end
