class RemoveDescriptionFromPlanningBoard < ActiveRecord::Migration
  def change
    remove_column :planningboards, :description, :text
  end
end
