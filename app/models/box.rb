class Box < ActiveRecord::Base
  resourcify
  include Authority::Abilities
  
  belongs_to :user

  has_many :histories, dependent: :destroy

  validates :user_id, presence: true
  validates :name, presence: true
end
