require 'rumojinize/version'
require 'rumojinize/core'

module Rumojinize
end

ActiveRecord::Base.send :include, Rumojinize::Core
