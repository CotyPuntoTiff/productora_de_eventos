class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end

  def show
    @group = Group.find(params[:id])
    @last_con = Concert.last_concerts(@group)
    @max_audie = Concert.max_audience(@group)
    @max_t = Concert.max_time(@group)

  end

  def new
  end

  def creates
    
  end

  def edit
  end

  def update
  end

  def destroy
    @group = Group.find(params[:id])
    @group.destroy
    redirect_to group_path
  end
  
end
