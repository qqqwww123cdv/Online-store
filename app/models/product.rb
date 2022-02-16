class Product < ApplicationRecord
  has_one_attached :picture
  validate :correct_picture_type
  validates :name, presence: true, length: {minimum: 2, maximum: 500}
  validates :vendor_code, presence: true, length: {minimum: 7, maximum: 7}
  validates :description, presence: true, length: {minimum: 1, maximum: 5000}
  validates :price, presence: true, length: {minimum: 1, maximum: 7}

  private

  def correct_picture_type
    if picture.attached? && !picture.content_type.in?(%w(image/jpeg image/jpg image/png))
      errors.add(:picture, 'must be a JPEG,JPG or PNG.')
    elsif picture.attached? == false
      errors.add(:picture, 'required.')
    end
  end
end
