# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#WebPage.create(pagetitle: 'Home', bartitle: 'Home', body: 'introduction to lab', ispublic: true, url: '')
#WebPage.create(pagetitle: 'Privacy', bartitle: 'Privacy', body: 'privacy message', ispublic: true, url: '')
#WebPage.create(pagetitle: 'Terms', bartitle: 'Terms', body: 'usage terms', ispublic: true, url: '')
#WebPage.create(pagetitle: 'About', bartitle: 'About', body: 'text about lab', ispublic: true, url: '')
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

