#frozen_string_literal: true

module SocialMedia
    Config = SuperConfig.new do
        mandatory :database_url, string
        mandatory :tz, string
    end
end
