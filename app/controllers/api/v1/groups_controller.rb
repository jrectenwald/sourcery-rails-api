class Api::V1::GroupsController < ApplicationController
  before_action :login_required

  def show
    @group = Group.find(params[:id])
    @resource = Resource.new
    @google_doc = GoogleDoc.new
    @video = Video.new
    @notification = Notification.new
    @invite_ids = @group.invite_ids(current_user)
    @comments_over_time = @group.comments_over_time
    @invite_list = User.where(id: @invite_ids)
    @user_group = UserGroup.find_by(group_id: @group.id, user_id: current_user.id)
    respond_to do |format| 
      format.html
      format.json {render json: {comments_over_time: @comments_over_time}}
    end
  end

  def index
    @groups = Group.all
    render json: @groups
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.create(group_params)
    render json: @group
  end

  def edit
    @group = Group.find(params[:id])
  end

  def update
    @group = Group.find(params[:id])
    @group.update(group_params)    
    redirect_to @group
  end

  def destroy
    @group = Group.find(params[:id])
    @group.destroy
    redirect_to groups_path
  end

  private

  def group_params
    params.require(:group).permit(:topic, :description)
  end
end
