#frozen_string_literal: true

require "test_helper"

class EncryptorTest < ActiveSupport::TestCase
    test "encrypts message" do
        encrypted = Encryptor.encrypt("hello")
        refute_equal "hello", encrypted
    end

    test "decrypts message"  do
        decrypted = Encryptor.decrypt("hello")
        assert_equal "hello", decrypted
    end

    test "raises error for invalid encrypted message"  do
        assert_raises(Encryptor::InvalidEncryptedMessage) do
            Encryptor.decrypt("foo")
        end
    end
end
