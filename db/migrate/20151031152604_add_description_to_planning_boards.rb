class AddDescriptionToPlanningBoards < ActiveRecord::Migration
  def change
    add_column :planningboards, :description1, :text
    add_column :planningboards, :description2, :text
    add_column :planningboards, :description3, :text
    add_column :planningboards, :description4, :text
    add_column :planningboards, :description5, :text
  end
end
