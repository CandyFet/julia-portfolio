# frozen_string_literal: true

# Capybara settings (not covered by Rails system tests)

# Make server listening on all hosts
Capybara.server_host = "0.0.0.0"
# Use a hostname accessible from the outside world
Capybara.app_host = "http://#{`hostname`.strip&.downcase || "0.0.0.0"}"

# Don't wait too long in `have_xyz` matchers
Capybara.default_max_wait_time = 2

# Normalizes whitespaces when using `has_text?` and similar matchers
Capybara.default_normalize_ws = true

# Where to store artifacts (e.g. screenshots, downloaded files, etc.)
Capybara.save_path = ENV.fetch("CAPYBARA_ARTIFACTS", "./tmp/capybara")

Capybara.singleton_class.prepend(Module.new do
  attr_accessor :last_used_session

  def using_session(name, &block)
    self.last_used_session = name
    super
  ensure
    self.last_used_session = nil
  end
end)
