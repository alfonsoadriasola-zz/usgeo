# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_usgeo_session',
  :secret      => '0702b1f060590ffb5da8e947f88df0cc65fa4c723bbfbf5e1aa75a5c2bcc899750eacb6018587b89b7d2835bcef558271724ce18f5ad78b0c4fb6308a5762a11'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
