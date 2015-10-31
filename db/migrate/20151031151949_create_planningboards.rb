class CreatePlanningboards < ActiveRecord::Migration
  def change
    create_table :planningboards do |t|
      t.string :goal1
      t.string :goal2
      t.string :goal3
      t.string :goal4
      t.string :goal5
      t.string :url1
      t.string :url2
      t.string :url3
      t.string :url4
      t.string :url5
      t.text :description
      t.string :name

      t.timestamps null: false
    end
  end
end
