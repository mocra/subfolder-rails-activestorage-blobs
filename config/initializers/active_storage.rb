if Rails.env.development? && ActiveStorage::Current.host.blank?
  Rails.application.reloader.to_prepare do
    ActiveStorage::Current.host = "#{ENV["ACTIVE_STORAGE_URL"]}:#{ENV["PORT"]}"
  end
end

Rails.configuration.to_prepare do
  ActiveStorage::Blob.class_eval do
    before_create :generate_key_with_prefix

    def generate_key_with_prefix
      self.key = if prefix
        File.join prefix, self.class.generate_unique_secure_token
      else
        self.class.generate_unique_secure_token
      end
    end

    def prefix
      ENV["HEROKU_APP_NAME"]
    end
  end
end
