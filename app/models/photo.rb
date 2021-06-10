class Photo < ApplicationRecord
  validates :label, presence: true
end
