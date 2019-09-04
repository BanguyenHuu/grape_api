module Student
  class Data < Grape::API

    resource :hoc_sinhs do
      desc 'List students'

      get do
        HocSinh.all
      end

      desc 'Create a new stuent'

      params do
        requires :name, type: String
      end

      post do
        HocSinh.create({
          name: params[:name]
        })
      end

      desc 'delete a student'

      params do
        requires :id, type: String
      end

      delete ':id' do
        student = HocSinh.find_by(id: params[:id])
        status 404 unless student
        student.destroy! if student
      end

      desc 'update a student'

      params do
        requires :id, type: String
        requires :name, type: String
      end

      put ':id' do
        student = HocSinh.find_by(id: params[:id])
        student.update({
          name: params[:name]
        })
      end

      desc 'show a student'

      params do
        requires :id, type: String
      end

      get ':id' do
        student = HocSinh.find_by(id: params[:id])
      end
    end
  end
end
