# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



Role.create! name:'Director'
Role.create! name:'Producer'
Role.create! name:'Leading Actor'
Role.create! name:'Leading Actress'
Role.create! name:'Supporting Actor'
Role.create! name:'Supporting Actress'

Genre.create! name:'Action'
Genre.create! name:'Horror'
Genre.create! name:'Romantic Comedy'
Genre.create! name:'Thriller'

 Studio.create! name:'Warner Brothers'
 Studio.create! name:'20th Century Fox'
 Studio.create! name:'MGM'

 Player.create! name:'Luke Robertson'
 Player.create! name:'Steven Spielberg'
 Player.create! name:'Angelina Jolie'
 Player.create! name:'Brad Pitt'

 Movie.create! name:'Mr and Mrs Smith'
 Movie.create! name:'E.T.'