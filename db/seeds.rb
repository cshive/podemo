# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Organization.create(name: 'MD Anderson', identifier: 'tx035')
Organization.create(name: 'GBMC', identifier: 'md036')

user = User.new(email: 'test@test.com',
                password: 'Welcome01',
                password_confirmation: 'Welcome01'
               )
user.skip_confirmation!
user.save!
