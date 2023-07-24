# frozen_string_literal: true

require_relative "whats_app/version"
require_relative "whats_app/configuration"
require_relative "whats_app/client"

module WhatsApp
  class << self
    def configure
      @configuration ||= Configuration.new
      yield(@configuration) if block_given?
    end

    def configuration
      @configuration
    end
  end

  class Error < StandardError; end
end
