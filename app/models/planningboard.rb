class Planningboard < ActiveRecord::Base
  has_many :comments

  mount_uploader :picture1, Picture1Uploader
  mount_uploader :picture2, Picture2Uploader
  mount_uploader :picture3, Picture3Uploader
  mount_uploader :picture4, Picture4Uploader
  mount_uploader :picture5, Picture5Uploader

  scope :search, ->(keyword) { where( "lower(name) LIKE ?", "%#{keyword.downcase}%") if keyword.present? }

end
