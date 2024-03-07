class CreateInformation < ActiveRecord::Migration[7.0]
  def change
    create_table :information do |t|
      t.string :title
      t.text :content
      t.string :user_id

      t.timestamps
    end
  end
end
