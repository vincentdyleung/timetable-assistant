class AddCreditsToCourse < ActiveRecord::Migration
  def change
    add_column :courses, :credits, :integer
  end
end
