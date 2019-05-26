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
    @student = Student.create(params.permit(:first_name, :last_name))

    redirect_to student_path(@student)
    # redirect_to @student
  end

  # def create
  #   @student = Student.create(
  #     {
  #       first_name: params[:first_name],
  #       last_name: params[:last_name]
  #     }
  #   )
  #   redirect_to student_path(@student)
  # end

  private 

  def student_params
    params.require(:student).permit(:first_name, :last_name)
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