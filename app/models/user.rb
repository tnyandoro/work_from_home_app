# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  scope :active_users, -> { where(active: true) }
  scope :inactive_users, -> { where(active: false) }
  validates :name, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :transactions, class_name: 'Transaction', foreign_key: 'author_id'
  has_many :groups
end
