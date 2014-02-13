class AddSortedPositionToExperiences < ActiveRecord::Migration
  def change
    add_column :experiences, :sorted_position, :integer
  end
end
