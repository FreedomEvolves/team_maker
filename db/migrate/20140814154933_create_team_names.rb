class CreateTeamNames < ActiveRecord::Migration
  def change
    create_table :team_names do |t|
      t.string :teams

      t.timestamps
    end
  end
end
