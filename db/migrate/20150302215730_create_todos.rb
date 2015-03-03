class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.text :title
      t.text :body
      t.boolean :finished, default: false

      t.timestamps null: false
    end
  end
end
