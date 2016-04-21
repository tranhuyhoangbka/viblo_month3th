class StudentsController < ApplicationController
  def index
    @students = Student.all.order :name
    respond_to do |format|
      format.html
      format.xlsx{render xlsx: 'index', filename: "students.xlsx"}
    end
  end
end
