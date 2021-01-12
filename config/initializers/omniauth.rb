Rails.application.config.middleware.use OmniAuth::Builder do
  Dotenv.load
  provider :twitter, ENV['TWITTER_API_KEY'], ENV['TWITTER_SECRET_KEY'],
  {
    :secure_image_url => 'true',
    :image_size => 'original',
    :authorize_params => {
      :force_login => 'true',
    }
  }
end