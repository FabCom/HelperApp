class Task < ApplicationRecord
  validates :title, presence: true
  validates :deadline, presence: true
  belongs_to :category
end
