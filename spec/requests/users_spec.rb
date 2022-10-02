require 'rails_helper'

RSpec.describe "Users", type: :request do
 
  describe 'GET /users' do
    it 'returns status code 200' do
      get '/users'
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /auth/register' do
    scenario 'when the request is valid' do
        post '/auth/register', params: {
            username: 'Boomer',
            password: 'password123',
            email: 'boomer@mail.com'
          }
        
        expect(response.status).to eq(201)

        json = JSON.parse(response.body).deep_symbolize_keys
        expect(json[:message]).to eq("User has been successfully created!")
        expect(User.count).to eq(1)
    end

    scenario 'when request has invalid user attributes' do
      post '/auth/register', params: {
        user: {
          username:'',
          password:'',
          email: 'boomer@mail.com'
        }
      }
      # returns error message
      expect(response.status).to eq(422)

      json = JSON.parse(response.body).deep_symbolize_keys
      expect(json[:username]).to eq(["can't be blank"])

      expect(User.count).to eq(0)
    end
  end
end