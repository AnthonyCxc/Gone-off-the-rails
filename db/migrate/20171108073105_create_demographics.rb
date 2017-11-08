class CreateDemographics < ActiveRecord::Migration[5.1]
  def change
    create_table :demographics do |t|
    	t.string :country
    	t.string :state_or_province
    	t.string :address

      t.timestamps
    end
  end
end
