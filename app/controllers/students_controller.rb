class StudentsController < ApplicationController
  
  def index
    students = Student.all
    render json: students
  end

  def grades
    students = Student.all.sort_by {|student| student.grade}.reverse
    render json: students
  end

  def highest_grade 
    highest_grade = Student.all.max_by {|student| student.grade}
    render json: highest_grade
  end

end
