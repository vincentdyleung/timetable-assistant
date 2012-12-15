class CourseSection < ActiveRecord::Base
  attr_accessible :available, :day, :end_time, :enroll, :instructor, :name, :quota, :remark, :room, :sis_id, :start_time, :wait
  belongs_to :courses, :inverse_of => :course_sections
  serialize :instructor, Array
  serialize :day, Array
  serialize :start_time, Array
  serialize :end_time, Array
  serialize :date_range, Array
  serialize :room, Array
end
