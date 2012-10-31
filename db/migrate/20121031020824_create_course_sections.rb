class CreateCourseSections < ActiveRecord::Migration
  def change
    create_table :course_sections do |t|
      t.integer :sis_id
      t.string :name
      t.time :start_time
      t.time :end_time
      t.string :day
      t.string :room
      t.string :instructor
      t.integer :quota
      t.integer :enroll
      t.integer :available
      t.integer :wait
      t.string :remark

      t.timestamps
    end
  end
end
