# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_vcs_session',
  :secret      => 'f64508ff553c843b9f1d89984b74d37343e747f1490f88e95c1a219eec6b71da2204facca483dbbddfd289ee6f750dadb9556483df830c67c31f3a36a8f459da'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
