class ChangeStartTimeEndTimeInCourseSections < ActiveRecord::Migration
  def up
    change_column :course_sections, :start_time, :string
    change_column :course_sections, :end_time, :string
  end

  def down
    change_column :course_sections, :start_time, :time
    change_column :course_sections, :end_time, :time
  end
end
