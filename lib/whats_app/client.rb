module WhatsApp
  class Client
    attr_accessor :number_identification, :token

    def initialize(number_identification: WhatsApp.configuration.number_identification, token: WhatsApp.configuration.token)
      @number_identification = number_identification
      @token = token
    end

    def connection
      @connection ||= Faraday.new(url: "https://graph.facebook.com/v17.0/#{number_identification}") do |faraday|
        faraday.request :json
        faraday.response :json
        faraday.request :authorization, 'Bearer', token
      end
    end

    def send_message(phone_number:, message:)
      body = {
        "messaging_product": "whatsapp",
        "recipient_type": "individual",
        "to": phone_number,
        "type": "text",
        "text": {
          "preview_url": false,
          "body": message
        }
      }
      connection.post("messages", body.to_json)
    end
  end
end
