require '/home/anton/projects/test_project/spec/rails_helper'

describe UsersController do
  describe "GET #show" do
    it "show user card if user present" do
      user = FactoryBot.create(:user)

      get :show, params: { id: user.id }
      expect(response).to be_success
    end
  end

  describe "GET #new" do
    it "new user card" do
      get :new
      expect(response).to render_template(:new)
    end
  end

  describe "GET #create" do
    it "creates a new user with valid attributes" do
      attrs = FactoryBot.attributes_for(:user)
      user_attrs = {user: attrs}
      expect(post :create, params: user_attrs).to have_http_status(200)
    end
  end
end
