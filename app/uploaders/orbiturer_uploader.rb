# encoding: utf-8

class OrbiturerUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  include CarrierWave::RMagick
  include CarrierWave::MiniMagick


  # Choose what kind of storage to use for this uploader:
  storage :file
  # storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
  process :resize_to_fit => [440, 620]

  version :thumb do
    process :resize_to_fill => [200,200]
  end
  
    %w[red green blue purple black].each do |color|
    version(color) { process stamp: color }
  end

  def stamp(color)
#    manipulate! do |source|
#      overlay_path = Rails.root.join("app/assets/images/flower_frames_5.png")
#      overlay = Magick::Image.read(overlay_path).first
#      puts source
#      source = source.resize_to_fill(70, 70).quantize(256, Magick::GRAYColorspace).contrast(true)
#      source.composite!(overlay, 0, 0, Magick::OverCompositeOp)
#      colored = Magick::Image.new(70, 70) { self.background_color = color }
#      colored.composite(source, 0, 0, Magick::CopyOpacityCompositeOp)
#    end
  end

  # Provide a default URL as a default if there hasn't been a file uploaded:
  # def default_url
  #   # For Rails 3.1+ asset pipeline compatibility:
  #   # ActionController::Base.helpers.asset_path("fallback/" + [version_name, "default.png"].compact.join('_'))
  #
  #   "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  # end

  # Process files as they are uploaded:
  # process :scale => [200, 300]
  #
  # def scale(width, height)
  #   # do something
  # end

  # Create different versions of your uploaded files:
  # version :thumb do
  #   process :scale => [50, 50]
  # end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  # def extension_white_list
  #   %w(jpg jpeg gif png)
  # end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  # def filename
  #   "something.jpg" if original_filename
  # end

end
