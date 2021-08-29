class HocSinhsController < ApplicationController
  before_action :get_student, only: %i[show update destroy]
  def index
    @students = HocSinh.all
    render json: @students,  adapter: :json, root: 'students'
  end

  def show
    render json: @student,  adapter: :json, root: 'student'
  end

  private

  def get_student
    @student = HocSinh.find_by(id: params[:id])
  end

  def test
    nil
  end
end
