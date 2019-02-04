class AddForeignKeysToMovies < ActiveRecord::Migration[5.2]
  def change
    add_reference :movies, :viewer, foreign_key: true
    add_reference :movies, :cinema, foreign_key: true
  end
end
