require 'rest_client'

module CloudBit
  class Client
    API_URL = 'https://api-http.littlebitscloud.cc'
    API_VERSION = 'v2'

    def initialize(access_token, device_id)
      @access_token = access_token
      @device_id = device_id
    end

    def output(percent, duration)
      RestClient.post "#{API_URL}/devices/#{device_id}/output",
        {
          :percent => percent.to_s,
          :duration_ms => duration.to_s
        },
        Accept: "application/vnd.littlebits.#{API_VERSION}+json",
        Authorization: "Bearer #{access_token}"
    end

    private

    attr_reader :access_token, :device_id

  end
end