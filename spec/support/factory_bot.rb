# spec/support/factory_bot.rb
RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods
end

# Automatically include all factories in the spec/factories directory
Dir[Rails.root.join('spec/factories/**/*.rb')].each do |f|
  require f
end
