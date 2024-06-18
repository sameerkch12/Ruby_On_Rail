User.create!(email: 'receptionist@example.com', password: 'password', password_confirmation: 'password', role: 'receptionist')
User.create!(email: 'doctor@example.com', password: 'password', password_confirmation: 'password', role: 'doctor')

10.times do
  Patient.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    date_of_birth: Faker::Date.birthday(min_age: 18, max_age: 65),
    address: Faker::Address.full_address,
    phone: Faker::PhoneNumber.phone_number
  )
end
