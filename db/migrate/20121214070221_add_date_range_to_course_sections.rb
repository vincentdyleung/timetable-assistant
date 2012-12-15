class AddDateRangeToCourseSections < ActiveRecord::Migration
  def change
    add_column :course_sections, :date_range, :string
  end
end
