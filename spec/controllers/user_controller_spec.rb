require 'rails_helper'

describe UsersController, typer: :controller do
  let(:user) { User.create!(first_name: "Jovanka", last_name: "Nikolovski",email: "test@something.com", password: "123456")}
  let(:another_user) { User.create!(first_name: "Jack", last_name: "Someone",email: "j.someone@yahoo.com", password: "789101")}

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