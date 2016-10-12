require "bundler"
Bundler.require
require_all "app"

module PeicttTodo
  class Application < Peictt::Application
  end
end

require File.expand_path("../routes", __FILE__)
