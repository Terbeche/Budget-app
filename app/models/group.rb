class Group < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id', required: true
  has_and_belongs_to_many :operations
  has_one_attached :icon
  validates :name, presence: true, length: { maximum: 50 }
  validates :author_id, presence: true
end
