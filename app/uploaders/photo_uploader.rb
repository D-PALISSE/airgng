class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  # Remove everything else
  version :thumnail do
    resize_to_fit 256, 256
  end
end
