# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

if User.count <= 20
  until User.count >= 20
    20.times do
      User.create(email: Faker::Internet.email, 
                  password: 'password',
                  username: Faker::Internet.user_name)
    end
  end
end

def random_user
  User.all.sample
end

60.times do
  Todo.create(title: Faker::Name.title,
              body: Faker::Lorem.sentence,
              user_id: random_user.id)
end