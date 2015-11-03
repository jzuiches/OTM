# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Owner.create!([{first_name: "Joe", last_name: "Zuiches", email: "jzuiches@yahoo.com", password: "otm", unit: 8}, {first_name:"Mike", last_name: "Thompson", email: "mthompson.gmail.com", password: "otm", unit: 3}])