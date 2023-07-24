module WhatsApp
  class Configuration
    attr_accessor :number_identification, :token

    def initialize
      @number_identification = nil
      @token = nil
    end
  end
end
