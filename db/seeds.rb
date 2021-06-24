# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Store.create(name: '麻屋商店', address: '埼玉県秩父市本町3-6', postal_code: '3680044', telephone_number: '11122223333', email: 'asaya@chichibu.com', password: '111111')

User.create(email: 'user1@chichibu.com', password: '111111')