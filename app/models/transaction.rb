class Transaction < ApplicationRecord
  validates :name, presence: true

  belongs_to :user, class_name: 'User'
end
