class EnrollmentsController < ApplicationController
before_action :authenticate_user!

  def create
      current_user.enrollments.create(course: current_course) 
         current_user.enrollments.create(course: current_course)
  end

end

 private

  def current_course
    @current_course ||= Course.find(params[:course_id])
  end


