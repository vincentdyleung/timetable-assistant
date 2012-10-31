class AddCourseIdtoCourseSections < ActiveRecord::Migration
  def change
    add_column :course_sections, :course_id, :integer
  end
end
