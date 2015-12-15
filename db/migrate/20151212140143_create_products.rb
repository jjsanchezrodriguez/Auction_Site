class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer  :user_id
      t.title    :title
      t.string   :description
      t.datetime :deadline
      t.timestamps null: false
    end
  end
end
