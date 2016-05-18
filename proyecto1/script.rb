require 'rubygems'
require 'bundler/setup'

require 'awesome_print'
require 'pry'
require 'sqlite3'

require './sqlite/sqlite_script'
require './ap/permissions'
require './pry/propina_script'

admin_personal_info = {'name'=>'Juan', 'last_name'=>'Granados', 'birth_year'=>1982}
admin_contact_info = {'email'=>'crackiman@gmail.com', 'mob'=>'4181116582'}
admin_role = Role.new('users', 'contacts', 'promotions')
admin = User.new(admin_personal_info, admin_contact_info, admin_role)

ap admin_personal_info
ap admin_contact_info
ap admin_role.permissions

ap admin_role .methods - Object.methods

puts tip(80)

save_new_user('Owens Lion', 'owenslion@gmail.com', 1991)
users = save_new_user ('Hitman', 'hitman64@gmail.com', 1986)
ap users