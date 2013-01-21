# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ahas = [
  {note: "Rails Models are Ruby classes intended to represent real-word things."},
  {note: "Instance variables in controllers hold data for the views."},
  {note: "Rails is best for database-backed web applications."},
  {note: "Javascript is pretty cool."},
  {note: "Pairing accelerates learning."}  
  ]
  
Aha.create ahas