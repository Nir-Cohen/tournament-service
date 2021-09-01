class CreateTournamnets < ActiveRecord::Migration[6.1]
  def change
    create_table :tournamnets do |t|
      t.integer :tour_id
      t.datetime :start_date
      t.datetime :end_date
      t.integer :user_id

      t.timestamps
    end

    create_table :users do |t|
      t.integer :user_id
      t.string :correct_questions
      t.string :incorrent_questions
      t.integer :tournamnet_id
  
      t.timestamps
    end


    create_table :games do |t|
      t.integer :user_id
      t.integer :tournamnet_id
  
    end
  end
end
