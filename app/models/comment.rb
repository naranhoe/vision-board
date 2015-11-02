class Comment < ActiveRecord::Base
  belongs_to :planningboard

  validates :commenter, presence: true
end
