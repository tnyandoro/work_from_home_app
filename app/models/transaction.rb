class Transaction < ApplicationRecord
  validates :name, presence: true
  validates :amount, presence:true

  belongs_to :user, class_name: 'User'
  belongs_to :group, optional: true
end
