class Tag < ActiveRecord::Base

  belongs_to :photo
  belongs_to :user
  validates_uniqueness_of :user_id

end
