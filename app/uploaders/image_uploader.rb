# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base

  include Cloudinary::CarrierWave

  process tags: ['post_picture']
  
  version :thumbnail do
    resize_to_fit 180, 180
  end

end
