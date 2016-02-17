# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

require 'yaml'


# companies = YAML.load(File.open(File.expand_path('db/companies.yml')))
# puts 'seeding companies details...'
# companies.each do |key, value|
#   Company.find_or_create_by(name: value['name'],city: value['city'],website: value['website'])
# end


sub_companies = YAML.load(File.open(File.expand_path('db/sub_companies.yml')))
puts 'seeding sub companies details...'
sub_companies.each do |key,value|
   SubCompany.find_or_create_by(linked_in_id: value['linked_in_id'],name: value['name'],universal_name:value['universal_name'],web_site_url: value['website_url'],logo_url:value['logo_url'],employee_count_range:value['employee_count_range'][0],num_followers:value['num_followers'],description:value['description'])
end