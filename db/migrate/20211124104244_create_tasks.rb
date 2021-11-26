class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title
      t.references :category, foreign_key: true
      t.datetime :deadline
      t.boolean :status

      t.timestamps
    end
  end
end
