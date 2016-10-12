APP_ROOT = __dir__
require "./config/application"

use Rack::MethodOverride

run PeicttTodo::Application.new
