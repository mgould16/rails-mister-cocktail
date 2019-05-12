class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
  include Cloudinary::CarrierWave
end
