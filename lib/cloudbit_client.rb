require 'rest_client'

class CloudbitClient
  VERSION = "0.0.1"

  def initialize(access_token, device_id)
    @access_token = access_token
    @device_id = device_id
  end

  def output(percent, duration)
    RestClient.post "https://api-http.littlebitscloud.cc/devices/#{device_id}/output",
      {
        :percent => percent.to_s,
        :duration_ms => duration.to_s
      },
      Accept: "application/vnd.littlebits.v2+json",
      Authorization: "Bearer #{access_token}"
  end

  private

  attr_reader :access_token, :device_id

end
