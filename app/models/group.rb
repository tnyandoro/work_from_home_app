class Group < ApplicationRecord
  

  has_one_attached :icon
  validates :name, presence: true

  belongs_to :user
  has_many :transactions

  validates :icon, presence: true


end
