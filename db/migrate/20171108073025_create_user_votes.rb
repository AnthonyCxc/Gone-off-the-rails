class CreateUserVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :user_votes do |t|

      t.timestamps
    end
  end
end
