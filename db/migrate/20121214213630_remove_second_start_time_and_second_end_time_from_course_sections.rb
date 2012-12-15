class RemoveSecondStartTimeAndSecondEndTimeFromCourseSections < ActiveRecord::Migration
  def up
    remove_column :course_sections, :second_start_time
    remove_column :course_sections, :second_end_time
  end

  def down
  end
end
