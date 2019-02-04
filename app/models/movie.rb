class Movie < ApplicationRecord
  belongs_to :viewer
  belongs_to :cinema

  def viewer_name=(name)
    self.viewer = Viewer.find_or_create_by(first_name: name)
  end

  def viewer_name
    self.viewer ? self.viewer.first_name : nil
  end

  def cinema_name=(name)
    self.cinema = Cinema.find_or_create_by(name: name)
  end

  def cinema_name
    self.cinema ? self.cinema.name : nil
  end
end
