class MyObjectsController < ApplicationController
  def index
    @objects = MyObject.all
  end
  
  def new
    new_or_edit
  end

  def edit
    new_or_edit
  end

  def new_or_edit
    @object = MyObject.find_by_id(params[:id]) || MyObject.new
  end

  def create
    MyObject.where(params[:my_object]).first_or_create
    redirect_to my_objects_path
  end

  def update
    MyObject.find(params[:id]).update_attributes(params[:my_object])
    redirect_to my_objects_path
  end

  def destroy
    MyObject.find(params[:id]).destroy
  end

end
