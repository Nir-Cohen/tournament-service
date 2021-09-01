class TournamentsAndPlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :tournaments do |t|
      t.integer :tournament_id
      t.datetime :start_date
      t.datetime :end_date
      

      t.timestamps
    end

    create_table :players do |t|
      t.integer :user_id
      t.string :correct_questions
      t.string :incorrent_questions
      t.integer :tournament_id
  
      t.timestamps
    end

  end
end
