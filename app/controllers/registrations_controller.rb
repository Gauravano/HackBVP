class RegistrationsController < Devise::RegistrationsController
  private

  def sign_up_params
    params.require(:user).permit(:name, :address, :numslots, :numvacant, :mobilenum)
  end

  def account_update_params
    params.require(:user).permit(:name, :address, :numslots, :numvacant, :mobilenum, :email, :password, :password_confirmation, :current_password)
  end

  public

end