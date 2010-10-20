require 'tilt' unless defined? Tilt

unless defined? Tilt::SlimTemplate
  module Tilt
    # Slim template implementation. See:
    # http://github.com/stonean/slim
    class SlimTemplate < Template
      def initialize_engine
        return if defined? ::Slim
        require_template_library 'slim'
      end

      def prepare
        @engine = ::Slim::Engine.new(data)
      end

      def evaluate(scope, locals, &block)
        @output ||= @engine.render(scope, locals, &block)
      end
    end
    register 'slim', SlimTemplate
  end
end


