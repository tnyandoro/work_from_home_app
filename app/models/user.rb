class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true

  scope :active_users, -> { where(active: true) }
  scope :inactive_users, -> { where(active: false) }

  has_many :transactions, class_name: 'Transaction', foreign_key: 'author_id'
  has_many :groups
  has_one_attached :avatar
end
