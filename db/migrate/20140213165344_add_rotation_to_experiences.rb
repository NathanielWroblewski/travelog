class AddRotationToExperiences < ActiveRecord::Migration
  def change
    add_column :experiences, :rotation, :integer, default: 0, null: false
  end
end
