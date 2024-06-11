namespace :challenge_days do
  desc "Use image files instead of image blobs"
  task purge_image_blobs: :environment do
    cd_with_images = ChallengeDay.where.not(photo: nil)
    puts "Starting blobs purge"

    ActiveRecord::Base.transaction do
      cd_with_images.each_with_index do |cd, idx|
        t = Tempfile.create
        t.write cd.photo.force_encoding('UTF-8')
        compressed_image = ImageProcessing::MiniMagick.strip.quality(85).interlace('Plane').gaussian_blur('0.05').call(t)
        cd.images.attach(io: compressed_image, filename: "my_photo_#{idx}.jpg", content_type: 'image/jpg')
        cd.save
        t.close
        File.unlink(t.path)
        print '.'
      end
    end
    puts "All done!"
  end
end
