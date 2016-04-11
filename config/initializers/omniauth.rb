Rails.application.config.middleware.use OmniAuth::Builder do
  # for a REAL app use the environment variables, don't store key/secret in the file
  # provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
  provider :twitter, 'BZZsihUiv4B9lKF72UQnbA5x9', 'PhVrrE8MU2ARuXxUjDqR0mV4oUvsGIRRtJUmzB3UJSNGYTh7KG'
end