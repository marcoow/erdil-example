# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.create(title: 'This is Rails', body: 'Hello from the Backend server.', identity_id: Identity.first.id)
Post.create(title: 'This is Ember.js', body: 'I am here as well.', identity_id: Identity.last.id)
