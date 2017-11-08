# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
project_causes = {}

ActiveRecord::Base.transaction do
  20.times do
  	project_causes['project_title'] = Faker::App.name
  	project_causes['project_description'] = Faker::Hipster.sentence
  	project_causes['project_status'] = rand(0..1)
  	project_causes['donation_goal'] = rand(100..200)
  	project_causes['pto_id'] = rand(0..100)
  	project_causes['admin_id']= rand(0..100)

  	ProjectCause.create(project_causes)
  end
end
