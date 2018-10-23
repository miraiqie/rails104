class GroupsController < ApplicationController

  def index
    @groups = Group.all
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    @group.save
    redirect_to root_path, alert: "Create Success. "
  end


  private

  def group_params
    params.require(:group).permit(:title, :description)
  end

end
