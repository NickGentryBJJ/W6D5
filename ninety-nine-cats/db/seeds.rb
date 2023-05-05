# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Cat.destroy_all

ApplicationRecord.connection.reset_pk_sequence!('cats')

c1 = Cat.create!(birth_date: '2015-07-03',color: 'orange', name:'bob',sex: 'M')
c2 = Cat.create!(birth_date: '2016-04-14',color: 'black', name:'quincy',sex: 'M')
c3 = Cat.create!(birth_date: '2021-04-03',color: 'white', name:'stella',sex: 'F')