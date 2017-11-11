project_causes = {}

ActiveRecord::Base.transaction do
  20.times do
  	project_causes['project_title'] = Faker::App.name
  	project_causes['project_description'] = Faker::Hipster.sentence
  	project_causes['project_status'] = rand(0..2)
  	project_causes['donation_goal'] = rand(100..200)
  	project_causes['pto_id'] = 1
  	project_causes['admin_id']= 1
  	project_causes['fsp_id']= 1
  	project_causes['country'] = Faker::Address.country
  	project_causes['state_or_province'] = Faker::Address.state
  	project_causes['address'] = Faker::Address.street_name

  	ProjectCause.create(project_causes)
  end
end
