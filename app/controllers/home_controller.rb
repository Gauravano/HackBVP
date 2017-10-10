class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def profile
    @user = Userdetail.where(user_id: current_user.id)[0]
  end

  def upload_image
    uploaded_file = params[:image2]
    filename = SecureRandom.hex+'.'+uploaded_file.original_filename.split('.')[1]
    filepath = Dir.pwd+"/public/uploads/"+filename
    File.open(filepath,'wb') do |file|
      file.write(uploaded_file.read())
    end
    user = Userdetails.where(id == current_user.id)
    user.profile_picture = filename
    user.save!
    return redirect_to '/home/profile'
  end

  def upload_coverpic
    uploaded_file = params[:image1]
    filename = SecureRandom.hex+'.'+uploaded_file.original_filename.split('.')[1]
    filepath = Dir.pwd+"/public/uploads/"+filename
    File.open(filepath,'wb') do |file|
      file.write(uploaded_file.read())
    end

    user = Userdetails.where(id == current_user.id)
    user.coverpic = filename
    user.save!
    return redirect_to '/home/profile'
  end
end
