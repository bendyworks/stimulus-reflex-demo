class CreateTodoItems < ActiveRecord::Migration[6.0]
  def change
    create_table :todo_items do |t|
      t.string :title
      t.datetime :done_at

      t.timestamps
    end
  end
end
