class PostImage < ApplicationRecord
  has_one_attached :image
  belongs_to :user

  def get_image
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/aokami.png')
      image.attach(io: File.open(file_path), filename: 'aokami.png', content_type: 'image/png')
    end
    image
  end
end
