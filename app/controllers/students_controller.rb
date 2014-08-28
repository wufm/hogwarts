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

  def edit
    @student = Student.find(params[:id])
    @edit_house = true
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    redirect_to @student
  end

  def create
    @student = Student.new
    @student.name = params[:student][:name]
    @student.set_random_house

    @student.save

    redirect_to action: 'index'
  end


  private
  def student_params
    params.require(:student).permit(:name, :house_id, :id)
  end

end
