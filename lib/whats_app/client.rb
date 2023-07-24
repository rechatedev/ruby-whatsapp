module WhatsApp
  class Client
    attr_accessor :number_identification, :token

    def initialize(number_identification: WhatsApp.configuration.number_identification, token: WhatsApp.configuration.token)
      @number_identification = number_identification
      @token = token
    end
  end
end
