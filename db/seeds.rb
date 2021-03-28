# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create(email: 'alert@alert.com', password: 'test1234')
Client.create(email: 'test@test.com', password: 'test1234', nickname: 'Alert', first_name: 'Kridchanok', last_name: 'Rowsathien', province: 'กรุงเทพมหานคร', phone_no: Faker::PhoneNumber.phone_number)
Category.create(subject: 'ปัญหาครอบครัว')
Category.create(subject: 'หนี้เงินกู้')
Category.create(subject: 'อินเทอร์เน็ต')
Category.create(subject: 'มรดก')
Category.create(subject: 'แรงงาน')
Category.create(subject: 'อาชญากรรม')

10.times do
    Client.create(
        email: Faker::Internet.email, 
        password: 'test1234',
        first_name: Faker::Name.unique.name,
        last_name: Faker::Name.unique.name,
        nickname: Faker::Name.unique.name,
        province: Faker::Address.city,
        phone_no: Faker::PhoneNumber.phone_number
        )
end


10.times do
    Lawyer.create(
        email: Faker::Internet.email, 
        password: 'test1234',
        first_name: Faker::Name.unique.name,
        last_name: Faker::Name.unique.name,
        nickname: Faker::Name.unique.name,
        province: Faker::Address.city,
        phone_no: Faker::PhoneNumber.phone_number,
        lawyer_id: Faker::PhoneNumber.phone_number
        )

end