$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'rspec'

# Require all files in lib directory
Dir[File.dirname(__FILE__) + '/../lib/*.rb'].each do |file| 
  require File.basename(file, File.extname(file))
end

# Requires supporting files with custom matchers and macros, etc,
# in ./support/ and its subdirectories.
Dir[File.dirname(__FILE__) + '/support/**/*.rb'].each do |file|
  require File.basename(file, File.extname(file))
end

RSpec.configure do |config|
end
