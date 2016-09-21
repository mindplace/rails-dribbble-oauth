require 'rails_helper'

RSpec.describe MainController, :type => :routing do
  describe "routing" do

    it "routes to #oauth_request" do
      expect(:get => "/dribbble/request").to route_to("main#oauth_request")
    end

    it "routes to #callback" do
      expect(:get => "/dribbble/callback").to route_to("main#callback")
    end

    it "routes away to UserController for #dribbble_information" do
      expect(:get => "/dribbble/information").to route_to("users#add_dribbble_info")
    end
  end
end
