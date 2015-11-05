class Planningboard < ActiveRecord::Base
  validates :name, presence: true
  has_many :comments, dependent: :destroy

  mount_uploader :picture1, Picture1Uploader
  mount_uploader :picture2, Picture2Uploader
  mount_uploader :picture3, Picture3Uploader
  mount_uploader :picture4, Picture4Uploader
  mount_uploader :picture5, Picture5Uploader

  scope :search, ->(keyword) { where( "lower(name) LIKE ? OR lower(goal1) LIKE ? OR lower(goal2) LIKE ?
    OR lower(goal3) LIKE ? OR lower(goal4) LIKE ? OR lower(goal5) LIKE ?",
    "%#{keyword.downcase}%", "%#{keyword.downcase}%", "%#{keyword.downcase}%", "%#{keyword.downcase}%",
    "%#{keyword.downcase}%", "%#{keyword.downcase}%" ) if keyword.present? }

end
