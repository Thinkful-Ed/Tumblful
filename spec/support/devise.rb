# see: https://github.com/plataformatec/devise#test-helpers
RSpec.configure do |config|
  config.include Devise::Test::ControllerHelpers, type:   :controller
end
