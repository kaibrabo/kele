require 'httparty'
require 'json'

class Kele
    include HTTParty

    def initialize(email, password)
        response = self.class.post(api_url("sessions"), body: {"email": email, "password": password})
        @auth_token = response["auth_token"]
    end

    private

    def api_url(endpoint)
        "https://www.bloc.io/api/v1/#{endpoint}"
    end
end
