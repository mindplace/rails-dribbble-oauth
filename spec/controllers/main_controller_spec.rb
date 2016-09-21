require 'rails_helper'

describe MainController do

  describe "GET #oauth_request" do
    it "sets the correct session[:current_dribbble_user] if an id is passed" do
      get :oauth_request, { id: 10 }
      expect(request.session[:current_dribbble_user]).to eq(10)
    end

    it "sets session[:current_dribbble_user] to nil if an id is not passed" do
      get :oauth_request
      expect(request.session[:current_dribbble_user]).to eq(nil)
    end

    it "redirects user to Dribbble.com with correct params" do
      if !ENV["DRIBBBLE_CLIENT_ID"]
        ENV["DRIBBBLE_CLIENT_ID"] = "1"
      end
      get :oauth_request
      expect(response).to redirect_to("https://dribbble.com/oauth/authorize?client_id=#{ENV["DRIBBBLE_CLIENT_ID"]}")
    end
  end

  describe "GET #callback" do
    # these tests will fail if environment variables aren't echoed

    # TODO: I have no idea how to build these tests to dynamically make the #oauth_request call each time yet trigger the #callback method myself

    # before :each do
    #   get :callback, { code: "c019cc67fc53a58419ce1180669de2c7c10c9013ce808e0641fa3defd88b59f8"} # code example
    # end

    it "makes a call to API get access token"
    it "uses access token to get access to main API"
    it "prepares user information with user_id if main app already has this user registered"
    it "prepares user information with user_id = nil if main app does not have this user registered"
    it "calls clear_dribbble_user"
    it "redirects to dribble_info_path with user information"

  end

  describe "current_dribbble_user" do
    include RailsDribbbleOauth

    it "returns id corresponding to user in database if user was present when main#oauth_request was called" do
      user = User.create(email: "test@test.com", password: "password", first_name: "test_first", last_name: "test_last")

      get :oauth_request, { id: user.id }
      expect(current_dribbble_user.id).to eq(user.id)
    end

    it "returns nil if there is no current_dribbble_user" do
      user = User.create(email: "test@test.com", password: "password", first_name: "test_first", last_name: "test_last")

      get :oauth_request
      expect{ current_dribbble_user.id }.to raise_error(NoMethodError)
    end
  end

  describe "clear_dribbble_user" do
    include RailsDribbbleOauth

    it "returns nil when called" do
      user = User.create(email: "test@test.com", password: "password", first_name: "test_first", last_name: "test_last")

      get :oauth_request, { id: user.id }
      clear_dribbble_user
      expect{ current_dribbble_user.id }.to raise_error(NoMethodError)
    end

    it "sets session[:current_dribbble_user] to nil" do
      user = User.create(email: "test@test.com", password: "password", first_name: "test_first", last_name: "test_last")

      get :oauth_request, { id: user.id }
      clear_dribbble_user
      expect(session[:current_dribbble_user]).to eq(nil)
    end
  end
end
