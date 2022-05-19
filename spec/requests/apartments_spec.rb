require 'rails_helper'

RSpec.describe "Apartments", type: :request do
  describe "GET /index" do
    it "lets a user see all apartments" do

      user = User.where(email: 'test@test.test').first_or_create(password: '12345678', password_confirmation: '12345678')

      user.apartments.create(
        street: '3880 San Ramon Dr', 
        city: 'Oceanside', 
        state: 'California',
        manager: 'Bob Smith',
        email: 'bobsmith@hotmail.com',
        price: '$3000',
        bedrooms: 2, 
        bathrooms: 1,
        pets: 'No',
        image: 'https://images1.forrent.com/i2/tb-tHmpjytjE7Kxrc1HHnqm26BNSFIVF5rwMKFAGatA/117/image.jpg'
      )

      get '/apartments'

      apartment = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(apartment.length).to eq 1
    end
  end
end