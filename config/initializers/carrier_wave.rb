# Unlike tutorial, Azure is used for the sake of convenience
if Rails.env.production?
  CarrierWave.configure do |config|
    config.azure_storage_account_name = ENV["AZURE_STORAGE_ACCOUNT_NAME"]
    config.azure_storage_access_key = ENV["AZURE_STORAGE_ACCESS_KEY"]
    # config.azure_storage_blob_host = "YOUR STORAGE BLOB HOST" # optional
    config.azure_container = ENV["AZURE_STORAGE_CONTAINER"]
    # config.asset_host = "YOUR CDN HOST" # optional
    config.auto_sign_urls = true
  end
end
