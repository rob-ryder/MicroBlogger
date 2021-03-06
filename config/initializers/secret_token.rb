# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.

# MicroBlogger::Application.config.secret_token = '84a078509fdfd8889de4820a535f6bdae7d16eea801663d4b1727bf51f5b557c70f0d845bafbc34b3d7dbe4be8d8a576357f47267b98a2b9329acbe81df27dd8'

require 'securerandom'

def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
    # Use the existing token.
    File.read(token_file).chomp
  else
    # Generate a new token and store it in token_file.
    token = SecureRandom.hex(64)
    File.write(token_file, token)
    token
  end
end

MicroBlogger::Application.config.secret_token = secure_token