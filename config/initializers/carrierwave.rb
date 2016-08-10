carrierWave. configure do |config|
  if Rails.env.development? || Rails.env.test?
    config.storage = :file
  else
    config.storage = :fog
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: ENV['aws_access_key'],
      aws_secret_access_key: ENV['aws_secret_key'],
      region: 'eu-west-1'
    }
    config.fog_directory = ENV['aws_bucket_name']
  end
end