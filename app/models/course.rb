class Course < ActiveRecord::Base
  attr_accessible :code, :title, :credits
  belongs_to :subject, :inverse_of => :courses
  has_many :course_section, :inverse_of => :courses
  has_one :course_info, :inverse_of => :courses
  has_many :prerequisite, :class_name => "Course", :foreign_key => "prerequisite"
  belongs_to :advanced_course, :class_name => "Course"
end
