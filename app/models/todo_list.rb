# class todo list
class TodoList < ActiveRecord::Base
  belongs_to :user
  has_many :todo_items

  validates :title, presence: true
  validates :description, presence: true
end
