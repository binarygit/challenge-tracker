class ChallengeDaysController < ApplicationController
  def update
    @challenge_day = ChallengeDay.find_by id: params[:id]
    if @challenge_day
      compressed_image = ImageProcessing::MiniMagick.strip.quality(85).interlace('Plane').gaussian_blur('0.05').call(params[:photo])
      @challenge_day.images.attach(io: compressed_image, filename: params[:photo].original_filename, content_type: 'image/jpg')
      @challenge_day.update status: params[:status]
    end
  end
end
