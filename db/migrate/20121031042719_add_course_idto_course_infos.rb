class AddCourseIdtoCourseInfos < ActiveRecord::Migration
  def change
    add_column :course_infos, :course_id, :integer
  end
end
