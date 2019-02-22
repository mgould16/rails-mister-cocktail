class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  validates :name, presence: true, uniqueness: true
  mount_uploader :photo, PhotoUploader

  def pic_url()
    if self.photo_url
      return self.photo
    else
      return "sample"
    end
  end

  def pic_tag()
    if self.photo_url
      return self.photo
    else
      return "sample"
    end
  end
end
