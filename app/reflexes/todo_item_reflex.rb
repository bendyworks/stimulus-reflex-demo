# frozen_string_literal: true

class TodoItemReflex < ApplicationReflex
  def create
    TodoItem.create!(todo_item_params)
  end

  def toggle_done
    todo_item = TodoItem.find(element['data-id'])
    toggle = todo_item.done_at ? nil : DateTime.now
    todo_item.update_attribute(:done_at, toggle)
  end

  def destroy
    TodoItem.find(element['data-id']).destroy
  end

  private

  def todo_item_params
    params.require(:todo_item).permit(:title)
  end
end
