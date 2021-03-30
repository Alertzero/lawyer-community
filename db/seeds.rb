# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create(email: 'alert@admin.com', password: 'test1234')
Client.create(email: 'alert@client.com', password: 'test1234', nickname: 'Alert', first_name: 'Kridchanok', last_name: 'Rowsathien', province: 'กรุงเทพมหานคร', phone_no: Faker::PhoneNumber.phone_number)
Lawyer.create(email: 'alert@lawyer.com', password: 'test1234', nickname: 'Alert', first_name: 'Kridchanok', last_name: 'Rowsathien', province: 'กรุงเทพมหานคร', phone_no: Faker::PhoneNumber.phone_number, lawyer_id: Faker::PhoneNumber.phone_number)
Category.create(subject: 'ปัญหาครอบครัว')
Category.create(subject: 'หนี้เงินกู้')
Category.create(subject: 'อินเทอร์เน็ต')
Category.create(subject: 'มรดก')
Category.create(subject: 'แรงงาน')
Category.create(subject: 'อาชญากรรม')
Question.create(title: 'Help me im going to be jailed', body: 'help me please', category_id: 1, client_id: 1)
Advice.create(message: 'Explain more idiot', question_id: 1, lawyer_id: 1)
Comment.create(message: 'No', question_id: 1, client_id: 1, advice_id: 1)

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