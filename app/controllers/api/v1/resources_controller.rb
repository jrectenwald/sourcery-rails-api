class Api::V1::ResourcesController < ApplicationController
  
  def index
    # @resources_by_group = current_user.resources_by_group
    @resources = Resource.all
    render json: @resources
  end

  def show
    @resource = Resource.find(params[:id])
    @comment = Comment.new
    render json: @resource
  end

  def create
    @resource = Resource.new(resource_params)
    @group = Group.find(resource_params[:group_id])
    if @resource.save
      resource_item = render_to_string(partial: 'resources/resource', locals: {resource: @resource, current_user: current_user})
      render json: {message: "Resource saved!", resource_item: resource_item}
    else 
      render json: {errors: @resource.errors.full_messages}, status: 422
    end 
  end

  def edit
    @resource = Resource.find(params[:id])
  end

  def update
    @resource = Resource.find(params[:id])
    @resource.update(resource_params)
    redirect_to @resource
  end

  def destroy
    @resource = Resource.find(params[:id])
    @group = @resource.group
    @resource.destroy
    render json: {message: "destroyed"}
  end


private
  def resource_params
    params.require(:resource).permit(:title, :link, :group_id, :user_id)
  end
end
