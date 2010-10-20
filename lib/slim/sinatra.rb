require 'sinatra'
require 'slim'
require 'slim/tilt'

module Sinatra
  module Templates
    def slim(template, options={}, locals={})
      render :slim, template, options, locals
    end
  end
end

