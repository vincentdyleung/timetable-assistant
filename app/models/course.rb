class Course < ActiveRecord::Base
  attr_accessible :code, :title, :credits, :subject_id, :term
  belongs_to :subject, :inverse_of => :courses
  has_many :course_section, :inverse_of => :courses
  has_one :course_info, :inverse_of => :courses
end
