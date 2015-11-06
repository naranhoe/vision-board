class AddIndexToUsersEmail < ActiveRecord::Migration
  def change
    User.all.each do |u|
      u.email = "#{u.first_name}@#{u.last_name}.com"
      u.save
    end
    add_index :users, :email, unique: true
  end
end
