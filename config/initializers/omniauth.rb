Rails.application.config.middleware.use OmniAuth::Builder do
  # for a REAL app use the environment variables, don't store key/secret in the file
  # provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']

  provider :twitter, 'BZZsihUiv4B9lKF72UQnbA5x9', 'PhVrrE8MU2ARuXxUjDqR0mV4oUvsGIRRtJUmzB3UJSNGYTh7KG'

  provider :facebook, '1092342727475575', 'edeac296b58eac60d206a9da6b3b4477',
  scope: 'public_profile', info_fields: 'id,name,link'
end

OmniAuth.config.on_failure = Proc.new do |env|
	SessionsController.action(:auth_failure).call(env)
end