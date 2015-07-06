# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Todo.destroy_all

Todo.create(content: "The first todo.", complete: false)
Todo.create(content: "The second todo.", complete: true)
Todo.create(content: "The third todo.", complete: false)
Todo.create(content: "The fourth todo.", complete: true)