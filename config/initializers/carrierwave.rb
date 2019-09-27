# config/initializers/carrierwave.rb

CarrierWave.configure do |config|
  config.storage    = :aws
  config.aws_bucket = ENV["griffinflixterimages"]
  config.aws_acl    = "public-read"

  config.aws_credentials = {
      access_key_id:     ENV["access_key_id"],
      secret_access_key: ENV["secret_access_key"],
      region:            ENV["region"]
    }
  end