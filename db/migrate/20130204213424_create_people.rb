class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :persontype
      t.string :email
      t.string :highschool
      t.string :state

      t.timestamps
    end
  end
end
