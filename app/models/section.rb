
class Section < ApplicationRecord
 include RankedModel
  belongs_to :course
  has_many :lessons

 
  ranks :row_order, :with_same => :course_id

  def next_section
    section = course.sections.where("row_order > ?", self.row_order).rank(:row_order).first
    return section
  end


end
