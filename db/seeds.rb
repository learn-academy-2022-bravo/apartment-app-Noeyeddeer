apartments = [
  {
    street: '3880 San Ramon Dr', 
    city: 'Oceanside', 
    state: 'California',
    manager: 'Bob Smith',
    email: 'bobsmith@hotmail.com',
    price: '$3000',
    bedrooms: 2, 
    bathrooms: 1,
    pets: 'No',
    image: 'https://images1.forrent.com/i2/tb-tHmpjytjE7Kxrc1HHnqm26BNSFIVF5rwMKFAGatA/117/image.jpg',
    user_id: 1
  }
]

users = [
  {
    email: 'test@example.com',
    encrypted_password: 'Test123'
  }
]

apartments.each do |each_apartment|
  Apartment.create each_apartment
  puts "creating apartment #{each_apartment}"
end

