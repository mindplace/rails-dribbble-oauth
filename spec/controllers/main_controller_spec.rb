require 'rails_helper'

# describe GamesController do
#   let!(:game) { Game.create!(user_throw: Game::THROWS.sample) }
#
#   describe "GET #index" do
#     it "assigns all games as @games" do
#       get :index
#       expect(assigns(:games)).to eq(Game.all)
#     end
#   end
#
#   describe "POST #create" do
#     context "when valid params are passed" do
#       before :each do
#         post :create, { game: { user_throw: "rock" } }
#       end
#
#       it "creates a new Game" do
#         expect {
#           post :create, { game: { user_throw: "rock" } }
#         }.to change(Game, :count).by(1)
#       end
#
#       it "assigns a newly created game as @game" do
#         expect(assigns(:game)).to be_an_instance_of(Game)
#       end
#
#       it "redirects to the created game" do
#         new_game = assigns(:game)
#         expect(subject).to redirect_to(game_path(new_game))
#       end
#     end
#   end
# end

describe MainController do
  describe "GET #oauth_request" do
    it "redirects to Dribbble.com with params" do
      expect(response).to redirect_to("dribbble.com")
    end
  end
end
