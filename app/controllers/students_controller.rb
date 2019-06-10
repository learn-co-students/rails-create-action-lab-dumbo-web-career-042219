class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new
    @student.first_name = params[:first_name]
    @student.last_name = params[:last_name]
    @student.save

    redirect_to student_path(@student)
  end

end


# def create
#   @student = Student.create(student_params)
#   if @student.valid?
#     redirect_to @student
#   else
#     flash[:errors] = @student.errors.full_messages
#     redirect_to new_student_path
#   end
# end