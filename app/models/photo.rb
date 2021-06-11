class Photo < ApplicationRecord
  validates :label, presence: true

  has_one_attached :image

  def self.no_attachments
    left_joins(:image_attachment).group(:id).having("COUNT(active_storage_attachments) = 0")
  end
end
