# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "ユーザーを作成しています..."

@user = User.new(email: "admin@test.com" ,password:"password", role:0)
@user.skip_confirmation!
@user.save

@user = User.new(email: "company@test.com" ,password:"password", role:1)
@user.skip_confirmation!
@user.save

@user = User.new(email: "customer@test.com" ,password:"password", role:2)
@user.skip_confirmation!
@user.save


puts "ユーザー作成完了"