class Subject < ActiveRecord::Base
  attr_accessible :code, :degree
  has_many :courses, :inverse_of => :subjects
  has_many :course_sections, :through => :courses
  has_many :course_infos, :through => :courses
end
