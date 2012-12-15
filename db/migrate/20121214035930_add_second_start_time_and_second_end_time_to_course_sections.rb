class AddSecondStartTimeAndSecondEndTimeToCourseSections < ActiveRecord::Migration
  def change
    add_column :course_sections, :second_start_time, :time
    add_column :course_sections, :second_end_time, :time
  end
end
