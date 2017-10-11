class HomeController < ApplicationController
 autocomplete :userdetail, :name
 before_action :authenticate_user!, only: [:index]

 def index
  @user = Userdetail.where(user_id: current_user.id)
  unless(@user[0])
   redirect_to '/userdetails/new'
 end
end

def upvote

  flag = false
  @vacantup = Userdetail.where(user_id: current_user.id)[0]
  if @vacantup.numvacant <= 0
    redirect_to 'home/index',notice: 'space full'
  else
    @vacantup.numvacant = @vacantup.numvacant - 1
    @vacantup.save!
    flag = true

  end

# @latitude  = Geocoder.coordinates(Userdetail.where(user_id: current_user.id)[0].address)
@latitude  = Geocoder.coordinates(  :"bvp,paschim vihar,delhi")[0]
@longitude =  Geocoder.coordinates(:"bvp,paschim vihar,delhi")[1]
respond_to do |format|
      # format.html{
      #   redirect_to '/',notice: 'Answer is successfully upvoted'
      # }
      format.js {
        @count = @vacantup.numvacant
        @check = flag
      }
    end

  end

  def downvote

    flag = false
    @vacantup = Userdetail.where(user_id: current_user.id)[0]
    if @vacantup.numvacant > @vacantup.numslots
      redirect_to 'home/index',notice: 'already empty'
    else
      @vacantup.numvacant = @vacantup.numvacant + 1
      @vacantup.save!
      flag = true

    end

    respond_to do |format|
      # format.html{
      #   redirect_to '/',notice: 'Answer is successfully upvoted'
      # }
      format.js {
        @count = @vacantup.numvacant
        @check = flag
      }
    end
  end




  def homepage
  	
  end

  def profile
    name=params["userdetail"]
    @userdetail=Userdetail.find_by_name(name)
    if @userdetail 

    else
      redirect_to '/'
    end

  end
end
