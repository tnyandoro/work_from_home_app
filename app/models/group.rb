class Group < ApplicationRecord
  mount_uploader :icon, IconUploader

  has_one_attached :icon
  validates :name, presence: true

  belongs_to :user
  has_many :transactions

  validates :icon, presence: true

  def self.find_by_first_letter(letter)
    where('name LIKE ?', "#{letter}%").order('name ASC')
  end

end
