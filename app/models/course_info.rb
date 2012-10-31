class CourseInfo < ActiveRecord::Base
  attr_accessible :attributes, :description, :previous_code, :vector
  belongs_to :courses, :inverse_of => :course_infos
end
