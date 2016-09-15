require 'rails_helper'

describe UsersController, :type => :controller do
  let(:user) { FactoryGirl.create(:user)}

  let(:another_user) { FactoryGirl.create(:user)}

  describe 'GET #show' do
    context 'User is logged in' do
      before do
        sign_in user
      end

      it 'loads correct user details' do
        get :show, id: user.id
        expect(response).to have_http_status(200)
        expect(assigns(:user)).to eq user
      end
    end

    context 'User cannot access another show page' do
      it 'can\'t access the show page of other users' do
        get :show, id: another_user.id
        expect(response).to have_http_status(302)
        expect(assigns(:another_user)).to eq @another_user
      end
    end


    context 'No user is logged in' do
      it 'redirects to login' do
         get :show, id: user.id
         expect(response).to redirect_to('/login')
      end
    end
  end
end