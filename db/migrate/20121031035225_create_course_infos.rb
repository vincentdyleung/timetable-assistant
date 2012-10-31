class CreateCourseInfos < ActiveRecord::Migration
  def change
    create_table :course_infos do |t|
      t.string :previous_code
      t.string :description
      t.string :attributes
      t.string :vector

      t.timestamps
    end
  end
end
