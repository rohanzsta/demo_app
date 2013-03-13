class CreateMicoroposts < ActiveRecord::Migration
  def change
    create_table :micoroposts do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
