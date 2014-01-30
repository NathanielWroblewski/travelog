class AddVisitedToStates < ActiveRecord::Migration
  def change
    add_column :states, :visited, :boolean, null: false, default: false
  end
end
