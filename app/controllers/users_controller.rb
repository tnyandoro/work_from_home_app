class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @total_per_group = Transaction.total_per_group(current_user.id)
  end

  def show
    # @user = User.find(params[:id])
  end
end
