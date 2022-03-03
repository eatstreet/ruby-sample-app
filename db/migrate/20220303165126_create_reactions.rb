class CreateReactions < ActiveRecord::Migration[7.0]
  def change
    create_table :reactions do |t|
      t.integer :kind
      t.belongs_to :comment, foreign_key: true
      t.timestamps
    end
  end
end
