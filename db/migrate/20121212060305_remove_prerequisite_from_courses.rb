class RemovePrerequisiteFromCourses < ActiveRecord::Migration
  def up
    remove_column :courses, :prerequisite
  end

  def down
    add_column :courses, :prerequisite, :integer
  end
end
