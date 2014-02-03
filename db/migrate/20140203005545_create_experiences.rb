class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.text :text
      t.string :location
      t.datetime :taken_at
      t.references :state
      t.timestamps
    end
  end
end
