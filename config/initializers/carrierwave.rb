# config/initializers/carrierwave.rb

CarrierWave.configure do |config|
  config.storage    = :aws
  config.aws_bucket = ENV["griffinflixterimages"]
  config.aws_acl    = "public-read"

  config.aws_credentials = {
      access_key_id:     ENV["AKIAUO5ZQIF2ITHKQWVM"],
      secret_access_key: ENV["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"],
      region:            ENV["us-east-1"]
    }
  end