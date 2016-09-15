module RailsDribbbleOauth
  class MainController < RailsDribbbleOauth::ApplicationController
    def make_oauth_request
      binding.pry
      # redirect to https://dribbble.com/oauth/authorize
      dribbble = "https://dribbble.com/oauth/authorize"

      # in order for params to be built, you must have set environment variables:
      # get your DRIBBBLE_CLIENT_ID and DRIBBBLE_CLIENT_SECRET from
      # your Dribbble account directly: https://dribbble.com/account/applications/
      params = {"client_id" => ENV["DRIBBBLE_CLIENT_ID"]}

      # makes first request to Dribbble with your Client ID
      redirect_to "#{dribbble}?#{params.to_query}"
    end

    def passthru
      binding.pry
      # get back the code to make next API call
      params = {
        "client_id" => ENV["DRIBBBLE_CLIENT_ID"],
        "client_secret" => ENV["DRIBBBLE_CLIENT_SECRET"],
        "code" => request.env["QUERY_STRING"][5..-1],
        "button1" => "Submit"
      }

      # use code to request access token
      uri = URI.parse("https://dribbble.com/oauth/token")
      request = Net::HTTP.post_form(uri, params)
      token = JSON.parse(request.response.body)["access_token"]

      # use access token to get access to the API
      params = {"access_token" => token}
      uri = URI.parse("https://api.dribbble.com/v1/user")
      uri.query = URI.encode_www_form(params)
      response = Net::HTTP.get(uri)

      data = {
        success: true,
        status: "200 OK",
        message: nil,
        user_data: nil
      }

      if response.blank?
        data[:success] = false
        data[:status] = "204 No Content"
        data[:message] = "No user data returned from Dribbble."
      else
        data[:user_data] = JSON.parse(response)
      end

      redirect_to user_create_from_dribbble_path(data)
    end
  end
end
