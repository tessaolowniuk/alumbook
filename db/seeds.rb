# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Logins.create(id: '1', username: 'user', password: 'password', first_name: 'John',
  middle_initial: 'K', last_name: 'Stamos', type: '2')

Logins.create(id: '2', username: 'user2', password: 'password', first_name: 'Conan',
  middle_initial: 'L', last_name: 'OBrien', type: '1')

Users.create(id: '1', login_id: '1', email_addr: 'stamos@hotmail.com',
  street: '329 House St.', city: 'Chicago', state: 'IL', zip: '60540')

Saved_Lists.create(id: '100', login_id: '100', list_name: 'First List')

Saved_List_Users.create(id: '1', saved_list_id: '200', user_id: '1')

Degrees.create(id: '300', major_name: 'Computer Science', type: '3')

Colleges.create(id: '600', college_name: 'North Central College')
