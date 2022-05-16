#frozen_string_literal: true

class Encryptor
    def self.encryptor
        ActiveSupport::MessageEncryptor.new(SocialMedia::Config.encryptor_secret )
    end

    def self.encrypt(unencrypted_message, expires_in: nil, purpose: nil)
        encryptor.encrypt_and_sign(
            unencrypted_message: unencrypted_message,
            expires_in: expires_in,
            purpose: purpose
        )
    end
    
    def self.decrypt(encrypted_message)
    end
end
