class History < ActiveRecord::Base
  resourcify
  include Authority::Abilities

  belongs_to :user
  belongs_to :box

  validates :box_id, presence: true
  validates :type, presence: true
end
