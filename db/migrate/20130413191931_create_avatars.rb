class CreateAvatars < ActiveRecord::Migration
  def change
    create_table :avatars do |t|
      t.string :name
      t.string :location
      t.string :bag

      t.timestamps
    end
  end
end
