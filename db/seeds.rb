# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
WebPage.create(pagetitle: 'Home', bartitle: 'Home', body: 'Introduction to lab', ispublic: true, url: '')
WebPage.create(pagetitle: 'Privacy', bartitle: 'Privacy', body: 'This site collects information to improve functionality and content and to monitor performance. Data is used to help answer specific questions about the usage and performance of the web site or individual web pages. At no time is site usage associated with individual IP addresses.', ispublic: true, url: '')
WebPage.create(pagetitle: 'Terms', bartitle: 'Terms', body: 'We encourage the use of this site by visitors as a way to share information and knowledge in support of our three-part mission of education, research and public outreach. Site content is subject to change without notice. While most parts of the site are publicly accessible, certain portions may be restricted to specific users.', ispublic: true, url: '')
WebPage.create(pagetitle: 'About', bartitle: 'About', body: 'Text about lab', ispublic: true, url: '')
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

