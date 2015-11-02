class AddPictureToPlanningBoards < ActiveRecord::Migration
  def change
    add_column :planningboards, :picture1, :string
    add_column :planningboards, :picture2, :string
    add_column :planningboards, :picture3, :string
    add_column :planningboards, :picture4, :string
    add_column :planningboards, :picture5, :string
  end
end
