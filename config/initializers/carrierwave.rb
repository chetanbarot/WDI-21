CarrierWave.configure do |config|
  if Rails.env.development? || Rails.env.test?
    config.storage = :file
  else
    config.storage = :aws
    config.aws_acl = 'public-read'
    config.aws_bucket = "projectcookbook"
    config.aws_credentials = {
      access_key_id: "AKIAIF4IYW4X5ZG7T6KA",
      secret_access_key: "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",
      region: 'eu-west-1'
    }
  end
end