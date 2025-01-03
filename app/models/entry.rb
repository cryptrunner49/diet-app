class Entry < ApplicationRecord
  belongs_to :category
  validates :calories, :proteins, :carbohydrates, :fats, :meal_type, :category_id, presence: true

  def day
    self.created_at.strftime("%Y-%m-%d")
  end
end
