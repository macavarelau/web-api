require 'rails_helper'

RSpec.describe RatesController, type: :controller do
  describe "GET #index" do
    context "when user is authenticated" do
      before do
        # Assuming you have Devise configured
        @user = create(:user)
        sign_in @user
      end

      it "returns http success" do
        get :index
        expect(response).to have_http_status(:success)
      end

      it "renders the index template" do
        get :index
        expect(response).to render_template(:index)
      end
    end

    context "when user is not authenticated" do
      it "redirects to login page" do
        get :index
        expect(response).to redirect_to(new_user_session_path)
      end
    end
  end
end 