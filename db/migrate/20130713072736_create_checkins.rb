class CreateCheckins < ActiveRecord::Migration
  def change
    create_table :checkins do |t|
      t.string :user_hash

      t.timestamps
    end
  end
end
