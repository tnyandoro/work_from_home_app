class GroupsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_group, only: %i[show edit update destroy]

  def index
    @groups = Group.all.find_by_first_letter(params[:letter])
  end

  def show; end

  def new
    @group = Group.new
  end

  def edit; end

  def create
    @group = Group.new(group_params)
    @group.user = current_user
    if @group.save
      redirect_to groups_path, notice: 'You have successfully created a group.'
    else
      render :new
    end
  end

  def update
    @group = Group.find(params[:id])
    @group.update(group_param)
    redirect_to group_path(@group)
  end

  def destroy
    @group = Group.find(params[:id])
    @group.destroy
    flash[:notice] = "Group successfully Delected"
    redirect_to root_path
  end

  def set_group
    @group = Group.find(params[:id])
  end

  private

  def group_param
    params.require(:group).permit(:name, :icon, :user_id)
  end
end
